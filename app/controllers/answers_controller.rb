# frozen_string_literal: true

class AnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @answer = @question.build_answer(ans_params)
    if @answer.save!
      flash[:success] = 'ans is saved'
    else
      flash[:alert] = 'plz enter some text'
    end
    redirect_to request.referrer || details_path
  end

  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    flash[:success] = 'answer deleted'
    redirect_to request.referrer || details_path
  end

  def update
    @question = Question.find(params[:question_id])
    if @question.answer.update_attributes(ans_params)
      flash[:success] = 'Answer updated'
      redirect_to request.referrer || details_path
    end
  end

  private

  def ans_params
    params.require(:answer).permit(:ans)
  end
end
