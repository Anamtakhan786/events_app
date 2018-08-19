# frozen_string_literal: true

class ResponseController < ApplicationController
  before_action :authenticate_user!
  def create
    @response = current_user.responses.new(response_params)
    if @response.save
      flash[:notice] = 'Your response is recorded'
    else
      flash[:alert] = 'Your response is already recorded'
    end
    redirect_to root_path
  end

  private

  def response_params
    params.permit(:value, :event_id)
  end
end
