class Like < ApplicationRecord
  validates :author_id, uniqueness: { scope: %i[likeable_id likeable_type] }
  belongs_to :author
  belongs_to :likeable, polymorphic: true
end
