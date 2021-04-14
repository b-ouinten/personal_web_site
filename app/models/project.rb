class Project < ApplicationRecord
  # Associations
  belongs_to :client
  has_many :taggings
  has_many :tags, through: :taggings
end
