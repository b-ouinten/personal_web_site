class Tag < ApplicationRecord
  # Associations
  has_many :taggings
  has_many :projects, through: :taggings
end
