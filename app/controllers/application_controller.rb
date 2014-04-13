require 'digest/sha2'

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

    def authenticate
      authenticate_or_request_with_http_basic do |username, password|
        h = Digest::SHA2.new << password
        debugger
        username == $user && h.to_s == $password
      end
    end

end
