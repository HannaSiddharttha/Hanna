class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

    protected
	def authenticate_boss!
		redirect_to root_path unless user_signed_in? && current_user.is_boss?
	end
	def authenticate_admin!
		redirect_to root_path unless user_signed_in? && current_user.is_admin?
	end
end
