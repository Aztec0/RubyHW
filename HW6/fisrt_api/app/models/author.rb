class Author < ApplicationRecord
  has_many :comments

  validates :name, presence: true, length: { minimum: 2 }
end
