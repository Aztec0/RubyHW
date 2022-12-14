class RemoveStringFromTaggings < ActiveRecord::Migration[7.0]
  def change
    remove_column :taggings, :tag_belongs_to, :string
  end
end
