class Article < ApplicationRecord
  belongs_to :author
  has_many :comments, dependent: :destroy
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings
  has_many :likes, as: :likeable, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true
end
