# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @events = Event.paginate(page: params[:page], per_page: 5).order('event_date DESC')
  end

  def show
    @event = Event.find(params[:event_id])
  end
end
