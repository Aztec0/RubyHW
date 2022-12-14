class AddAuthorRefToArticle < ActiveRecord::Migration[7.0]
  def change
    add_reference :articles, :author, null: false, foreign_key: true
  end
end
