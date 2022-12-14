class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.integer :status, default: 0
      t.references :author, foreign_key: true, null: false
      t.references :article, foreign_key: true, null: false
      t.timestamps
    end
  end
end
