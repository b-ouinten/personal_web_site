class Tag < ApplicationRecord
  # Associations
  has_many :taggings
  has_many :projects, through: :taggings

  # Callbacks
  before_save :set_code

  private
  
  def set_code
    self.code = self.title.parameterize
  end
end
