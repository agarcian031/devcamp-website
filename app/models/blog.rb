class Blog < ApplicationRecord
  # will replace id with title slug 
  extend FriendlyId
  friendly_id :title, use: :slugged

  # enum 
  # 0 will be mapped to draft so whenever we get a new blog post, it will automatically be counted as a draft 
  enum status: { draft: 0, published: 1}

  # validations 
  validates_presence_of :title, :body
end
