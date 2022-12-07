class CreateTaggings < ActiveRecord::Migration[7.0]
  def change
    create_table :taggings do |t|
      t.belongs_to :article, null: false, foreign_key: true
      t.string :tag_belongs_to

      t.timestamps
    end
  end
end
