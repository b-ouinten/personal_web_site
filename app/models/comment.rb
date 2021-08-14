class Comment < ApplicationRecord
  # Assoiciations
  belongs_to :comment_category

  # Validations
  validates_presence_of :content
end
