class HomeController < ApplicationController
	def index
		@events = Event.all.order("event_date DESC")
	end
	def show
		@event = Event.find(params[:event_id])
	end
end
