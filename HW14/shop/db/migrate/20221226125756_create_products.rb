# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.string :image
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
