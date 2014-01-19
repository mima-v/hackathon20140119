class SessionsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    self.current_user = User.find_by_provider_and_uid(auth["provider"], auth["uid"]) || User.create_with_omniauth(auth)
    redirect_to root_path
  end
end
