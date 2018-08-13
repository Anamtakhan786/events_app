class Event < ApplicationRecord
	belongs_to :user
	has_many :responses ,dependent: :destroy
	validates :title,:description,:address,:event_date,:seats, presence: true
	validate :date_cannot_be_in_past

	def date_cannot_be_in_past
		errors.add(:event_date, "can't be in the past") if
		event_date.present? and event_date < Date.today
	end
end
