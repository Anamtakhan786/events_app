class HomeController < ApplicationController
	def index
		@events = Event.all.order("event_date DESC")
	end
	def show
		@events = Event.find(params[:id])
	end
end
