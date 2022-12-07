class Comment < ApplicationRecord
  belongs_to :author
  belongs_to :article

  enum :status, [:unpubliched, :published]

  scope :published, -> { where(status: 1) }
  scope :unpublished, -> { where(status: 0) }

  validates :body, :author_id, :article_id, presence: true
  validates :body, length: { minimum: 10 }
end
