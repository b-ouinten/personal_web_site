class Tag < ApplicationRecord
  # Callbacks
  before_save :set_code
  
  # Associations
  has_many :taggings
  has_many :projects, through: :taggings

  private
  
  def set_code
    self.code = self.title.parameterize
  end
end
