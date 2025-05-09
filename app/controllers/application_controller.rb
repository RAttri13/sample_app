class ApplicationController < ActionController::Base
    include SessionsHelper
        # skip_before_action :verify_authenticity_token, only: [:create]  # Add your action here
      private
    def logged_in_user
        unless logged_in?
          store_location
        flash[:danger] ="Please log in."
        redirect_to login_url
        end
      end
end
