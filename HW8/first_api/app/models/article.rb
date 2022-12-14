class Article < ApplicationRecord
  belongs_to :author
  has_many :comments, dependent: :destroy
  has_many :taggings, dependent: :destroy
  has_many :tags, through: :taggings
  has_many :likes, as: :likeable, dependent: :destroy

  accepts_nested_attributes_for :tags

  validates :title, presence: true
  validates :body, presence: true

  enum status:  [ :unpublished, :published]

  scope :unpublished, -> { where(status: 0) }
  scope :published, -> { where(status: 1) }

  scope :search, ->(params) { where('title || body ILIKE ?', "%#{params}%") }
  scope :filter_by_status, ->(status) { where status: }
  scope :filter_by_author, ->(name) { joins(:author).where('authors.name ILIKE ?', "%#{name}%") }
  scope :filter_by_tags, ->(tags) { joins(:tags).where('tags.name IN (?)', tags) }
end
