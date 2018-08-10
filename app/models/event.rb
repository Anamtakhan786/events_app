class Event < ApplicationRecord
	belongs_to :user
	has_many :responses
	validates :title , presence: true
	validates :description , presence: true
	validates :address , presence: true
	validate :date_cannot_be_in_past
	validates :event_date , presence: true
	validates :seats , presence: true

	def date_cannot_be_in_past
	  errors.add(:event_date, "date can't be in the past") if
      !event_date.blank? and event_date < Date.today
	end
end
