# frozen_string_literal: true

class Response < ApplicationRecord
  belongs_to :user
  belongs_to :event
  validates :event, uniqueness: { scope: :user_id }
end
