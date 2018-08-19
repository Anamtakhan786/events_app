# frozen_string_literal: true

class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true
      t.string :record

      t.timestamps
    end
  end
end
