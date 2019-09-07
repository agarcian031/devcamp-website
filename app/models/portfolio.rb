class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image 

  # custom scope 
  def self.angular 
    where(subtitle: 'Angular')
  end 

  # custom scope using scope keyword 
  # lambda - is a way of encapsulating an entire process in Ruby 
  scope :ror_items,  -> {  where(subtitle: 'Ruby on Rails')}
end
