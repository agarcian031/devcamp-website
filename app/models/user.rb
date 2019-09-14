class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :trackable,
         :recoverable, :rememberable, :validatable
# makes the name required so that it won't give an error when it tries to get the name and run the following methods 
validates_presence_of :name 
  # virtual attributes 

  # Will split the users name attribute and will take the first name in its own array for later use 
  def first_name 
    self.name.split.first 
  end 

  def last_name 
    self.name.split.last 
  end 
end
