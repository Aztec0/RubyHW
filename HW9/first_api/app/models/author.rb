class Author < ApplicationRecord
  has_many :articles
  has_many :comments
  has_many :likes
end
