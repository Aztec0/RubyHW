class Comment < ApplicationRecord
  belongs_to :article
  belongs_to :author
  has_many :likes, as: :likeable, dependent: :destroy

  validates :body, :author_id, :article_id, presence: true

  enum :status, [:unpubliched, :published]

  scope :unpublished, -> { where(status: 0) }
  scope :published, -> { where(status: 1) }

  scope :latest_comments, -> { last(10) }
end
