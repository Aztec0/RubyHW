# frozen_string_literal: true

# == Schema Information
#
# Table name: orders
#
#  id         :bigint           not null, primary key
#  cart_id    :bigint           not null
#  user_id    :bigint           not null
#  status     :integer          default("unpaid")
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Order < ApplicationRecord
  belongs_to :cart
  belongs_to :user

  enum :status, %i[unpaid paid], default: :unpaid
end
