class ResponseController < ApplicationController
	before_action :authenticate_user!
	def create 
			#p response_params
			@response = current_user.responses.new(response_params)
			if @response.save
				flash[:notice]= "Your response is recorded"
				redirect_to root_path
			else
				flash[:alert]= "Your response is already recorded"
				redirect_to root_path
			end
	end
	private

	def response_params
		params.permit(:value, :event_id)
	end
end
