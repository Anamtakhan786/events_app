# frozen_string_literal: true

class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      flash[:notice] = 'Your event is created'
      redirect_to root_path
    else
      flash.now[:alert] = @event.errors.full_messages
      render 'new'
    end
  end
  
  def show
    @events = current_user.events.order('event_date DESC').paginate(page: params[:page], per_page: 5)
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    flash[:success] = 'Event deleted'
    redirect_to request.referrer || details_path
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :address, :seats, :event_date)
  end
end
