class AddTagRefToTaggings < ActiveRecord::Migration[7.0]
  def change
    add_reference :taggings, :tag, null: false, foreign_key: true
  end
end
