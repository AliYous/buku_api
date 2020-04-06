class SignupController < ApplicationController
    #to store the auth token we cans use cookies or localStorage
    # cookies are vulnerable to CSRF and localStorage is vulnerable to XSS attacks. 
    # CSRF vulnerability is solvable - I usually prefer http-only cookies as the most secure token store.
    # jwt_sessions gem itself provides the set of tokens — access, refresh, and CSRF for the cases when cookies are chosen as the token store. 
    # With this being said, let’s use cookies together with the CSRF token provided by the gem 
    # (the gem automatically manages the CSRF validations when JWT is passed by request cookies).
    def create
      user = User.new(user_params)
      if user.save
        payload  = { user_id: user.id }
        session = JWTSessions::Session.new(payload: payload, refresh_by_access_allowed: true)
        tokens = session.login
  
        response.set_cookie(JWTSessions.access_cookie,
                            value: tokens[:access],
                            httponly: true,
                            secure: Rails.env.production?)
        render json: { csrf: tokens[:csrf] }
      else
        render json: { error: user.errors.full_messages.join(' ') }, status: :unprocessable_entity
      end
    end
  
    private
  
      def user_params
        params.permit(:email, :password, :password_confirmation)  
      end
  end