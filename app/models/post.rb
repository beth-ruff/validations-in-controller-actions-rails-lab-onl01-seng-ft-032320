class Post < ActiveRecord::Base
  validates :title, presence: true 
  validates :category, inclusion: { in: %w(Fiction Non-fiction) }
  validates :content, length: { minimum: 2 }
end
