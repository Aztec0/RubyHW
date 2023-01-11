class Cart < ApplicationRecord
  has_many :line_items, dependent: :nullify
  has_many :products, through: :line_items
  has_one :order

  def add_product(product)
    line_items.create(product: product, quantity: 1)
  end

  def total_price
    line_items.map(&:total_price).sum
  end
end
