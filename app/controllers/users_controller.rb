class UsersController < ApplicationController
    skip_before_action :verify_authenticity_token
    def index
        render json: User.all
    end

    def create
        @user = User.create(user_name: params[:user_name],email: params[:email],first_name: params[:first_name],last_name: params[:last_name])
        @user.save

        redirect_to users_url
       
    end
end
