class AddStatusToArticle < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :status, :integer, default: 0
  end
end
