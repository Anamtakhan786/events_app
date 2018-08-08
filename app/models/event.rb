class Event < ApplicationRecord
	belongs_to :user
	validates :title , presence: true
	validates :description , presence: true
	validates :address , presence: true
	validates :event_date , presence: true
	validates :seats , presence: true
end
