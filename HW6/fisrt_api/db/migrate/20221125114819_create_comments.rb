class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :body
      t.integer :status, default: 0
      t.belongs_to :author, null: false, foreign_key: true
      t.belongs_to :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
