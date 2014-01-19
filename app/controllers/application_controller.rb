class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :login?

  private
  def login?
    return true
  end
end
