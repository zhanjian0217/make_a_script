# frozen_string_literal: true

class CreateComments < ActiveRecord::Migration[7.1]
  def change
    create_table :comments do |t|
      t.references :book, null: false, foreign_key: true
      t.string :name

      t.timestamps
    end
  end
end
