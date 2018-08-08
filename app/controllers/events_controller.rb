class EventsController < ApplicationController
	
	def new 
		@events= Event.new
	end
	def create
		@events = current_user.events.build(event_params)
		if @events.save
        	flash[:notice] = "Your event is created"
        	redirect_to root_path
        else
        	flash.now[:alert] = "Please fill all details"
        	render 'new'
        end
    end
    def show
        @events= current_user.events.all.order("event_date DESC")
    end
	
	private

  	def event_params
    	params.require(:event).permit(:title, :description, :address, :seats, :event_date)
  	end

end
