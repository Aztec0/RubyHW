class Product < ApplicationRecord
  belongs_to :category
  has_many :line_items, dependent: :nullify

  validates :name, :description, :category_id, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
