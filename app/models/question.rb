# frozen_string_literal: true

class Question < ApplicationRecord
  belongs_to :event
  validates :ques, presence: true
  has_one :answer, dependent: :destroy
end
