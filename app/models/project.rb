class Project < ApplicationRecord
  # Associations
  belongs_to :client
  has_many :taggings
  has_many :tags, through: :taggings

  # Callbacks
  before_save :set_code

  # Instance methods
  def duration_phrase
    phrase = []
    weeks = self.duration / 7
    days = self.duration % 7
    phrase << "#{weeks} #{weeks > 1 ? 'weeks' : 'week'}" if weeks > 0
    phrase << "#{days} #{days > 1 ? 'days' : 'day'}"  if days > 0
    "#{phrase.join(' and ')}."
  end

  def team
    "me#{self.devs > 0 ? " and #{self.devs} devs." : '.'}"
  end

  private
  
  def set_code
    self.code = self.title.parameterize
  end
end
