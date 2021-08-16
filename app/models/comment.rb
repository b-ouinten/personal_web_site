class Comment < ApplicationRecord
  # Assoiciations
  belongs_to :comment_category

  # Validations
  validates_presence_of :comment_category, message: 'your opinion please if you don\'t mind'
  validates_presence_of :content, message: 'your comment is important for me!'

  # Instance methods
  def err_messages
    errors.messages[:comment_category].shift
    errors.messages.values.flatten.to_sentence.capitalize
  end
end
