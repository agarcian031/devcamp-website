module Placeholder
  extend ActiveSupport::Concern

  # create a class method that we will be able to call 
  def self.image_generator(height:, width:)
    "https://via.placeholder.com/#{height}x#{width}"

  end 
end 