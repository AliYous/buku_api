class ApplicationController < ActionController::API
	#Provides authorization actions which will secure the endpoints
	include JWTSessions::RailsAuthorization
	rescue_from JWTSessions::Errors::Unauthorized, with: :not_authorized #Exception handling for unauthorized requests
  
  private
  
  def not_authorized
    render json: { error: 'Not authorized' }, status: :unauthorized
  end
end
