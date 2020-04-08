module Api
	module V1
			class UsersController < ApplicationController
				before_action :authorize_access_request!
                
				# GET /me
				def show
					if current_user
						@user = current_user 
						render json: @user
					else
						render json: {status: "error", code: 401, message: "Can't find current user"}
					end	
				end      
			end
	end
end