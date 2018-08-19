# frozen_string_literal: true

class QuestionsController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @question = @event.questions.create(ques_params)
    if @question.save
      flash[:success] = 'ques is saved'
    else
      flash[:alert] = 'plz enter some text'
    end
    redirect_to root_url
  end

  private

  def ques_params
    params.require(:question).permit(:ques)
  end
end
