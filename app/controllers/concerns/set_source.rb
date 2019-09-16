module SetSource 
  extend ActiveSupport::Concern 
  included do 
     # Sessions 
  # Don't put secure information in sessions. 
  before_action :set_source 
  end 

  def set_source
    # will set q but only if it is available in params. 
    session[:source] = params[:q] if params[:q]
  end 
end 



 

