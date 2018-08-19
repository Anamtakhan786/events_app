# frozen_string_literal: true

class Answer < ApplicationRecord
  belongs_to :question
  validates :ans, presence: true
end
