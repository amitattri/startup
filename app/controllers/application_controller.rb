class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token, if: Proc.new { |c| c.request.format == 'application/json' }

  def authenticate_user_api
    unless current_user.present?
      render status: :unprocessable_entity, json: {errors: ['Not signed in']}
    end
  end

  private

  def api_user
    @api_user ||= User.where(api_token: params[:api_token]).last
  end

  def current_user
    params[:api_token].present? ? api_user : super
  end

  
end
