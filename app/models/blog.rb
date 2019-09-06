class Blog < ApplicationRecord
  # will replace id with title slug 
  extend FriendlyId
  friendly_id :title, use: :slugged
end
