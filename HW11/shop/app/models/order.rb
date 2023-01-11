class Order < ApplicationRecord
  belongs_to :cart
  belongs_to :user

  enum :status, %i[unpaid paid], default: :unpaid
end
