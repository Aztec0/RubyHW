# frozen_string_literal: true

# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  name        :string
#  description :text
#  price       :decimal(, )
#  category_id :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Product < ApplicationRecord
  belongs_to :category, dependent: :destroy
  has_many :line_items, dependent: :nullify

  has_one_attached :image do |attachable|
    attachable.variant :thumb, resize_to_limit: [350, 350]
    attachable.variant :main, resize_to_limit: [500, 500]
  end

  validates :name, :description, :category_id, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
