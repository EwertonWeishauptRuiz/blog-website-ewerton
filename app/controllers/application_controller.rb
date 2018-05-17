class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Only used by the application controller, the others are overwritten by the author of the blog	 
  layout 'author'


end
