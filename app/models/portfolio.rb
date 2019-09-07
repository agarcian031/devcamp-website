class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image 

  # custom scope 
  def self.angular 
    where(subtitle: 'Angular')
  end 

  # custom scope using scope keyword 
  # lambda - is a way of encapsulating an entire process in Ruby 
  scope :ror_items,  -> {  where(subtitle: 'Ruby on Rails')}

  # data defaults 
  # after a portfolio item has been initialized (when new action is called and form is generated), this will automatically run  
  after_initialize :set_defaults 

  # ||= if the image is nil, then set to the image to the value passes in 
  
  def set_defaults
    self.main_image ||= "https://via.placeholder.com/600x400"
    self.thumb_image ||= "https://via.placeholder.com/350x200"
  end 
end

