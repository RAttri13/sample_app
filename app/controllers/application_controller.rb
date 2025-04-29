class ApplicationController < ActionController::Base
        skip_before_action :verify_authenticity_token, only: [:create]  # Add your action here
      
    include SessionsHelper
end
