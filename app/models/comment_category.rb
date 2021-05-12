class CommentCategory < ApplicationRecord
  # Associations
  has_many :comments
end
