class ApplicationController < ActionController::Base
    protect_from_forgery :except => :search 
end
