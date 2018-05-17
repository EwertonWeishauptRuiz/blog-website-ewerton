# Controller for the Author part of the application, since it is split for different users
# and to not have a big application Controller for the whole website
class AuthorController < ApplicationController
  before_action :authenticate_author! 
end
