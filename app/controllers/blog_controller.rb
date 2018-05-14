# Controller for the Blog part of the application, since it is split for different users
# and to not have a big application Controller for the whole website
class BlogController < ActionController::Base
  protect_from_forgery with: :exception
end
