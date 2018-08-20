# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @events = Event.order('event_date DESC').paginate(page: params[:page], per_page: 5)
  end

  def show
    @event = Event.find(params[:event_id])
  end
end
