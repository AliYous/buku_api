module Api
	module V1
			class UsersController < ApplicationController
				before_action :authorize_access_request!
                
				# GET /me
				def show
					@user = User.find_by!(params[:email])
					render json: @user
				end      
			end
	end
end