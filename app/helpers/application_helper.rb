# frozen_string_literal: true

module ApplicationHelper
  def bootstrap_key(key)
    if %w[notice success].include?(key)
      'success'
    elsif %w[error alert].include?(key)
      'danger'
    else
      key
    end
  end

  def going(event)
    # Response.where(value: 'going', event_id: event.id)
    event.responses.where(value: 'going')
  end

  def not_going(event)
    # Response.where(value: 'not going', event_id: event.id)
    event.responses.where(value: 'not going')
  end

  def may_be(event)
    # Response.where(value: 'may be', event_id: event.id
    event.responses.where(value: 'may be')
  end

  def unanswered_ques(event)
    # (Question.where(event_id: event.id).count) -
    # (Question.where(event_id: event.id).joins(:answer).pluck(:ans).count)
    event.questions.count - event.questions.joins(:answer).count
  end
end
