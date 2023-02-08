# frozen_string_literal: true

# == Schema Information
#
# Table name: line_items
#
#  id         :bigint           not null, primary key
#  product_id :bigint           not null
#  cart_id    :bigint           not null
#  quantity   :integer
#  price      :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  validates :quantity, numericality: { greater_than_or_equal_to: 1 }

  def total_price
    quantity * product.price
  end
end
