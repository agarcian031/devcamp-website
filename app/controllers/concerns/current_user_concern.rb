module CurrentUserConcern
  extend ActiveSupport::Concern

  # Null Object Pattern 
# An overloading (override) method to make current_user available even when no user is logged in, so it is not limited to devise users
def current_user 
  # if super turns out to be false, meaning no user is logged in, then we will look at the other conditional. if its true, it will treat it like normal. 
  super || guest_user
end 

def guest_user 
  OpenStruct.new(name: "Guest User", first_name: "Guest", last_name: "User", email: "guest@test.com")
end 
end 