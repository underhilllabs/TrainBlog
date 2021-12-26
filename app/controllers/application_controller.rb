# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery

  rescue_from Pundit::NotAuthorizedError
    redirect_to new_user_session_url, alert: 'You must create an account to do this.'
  end
end
