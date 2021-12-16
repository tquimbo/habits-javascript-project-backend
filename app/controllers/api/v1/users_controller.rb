class Api::V1::UsersController < ApplicationController

        def index
            users = User.all
            render json: UserSerializer.new(users)
        end


        def create
            user = User.find_or_create_by(username: params[:username])
            render json: user
        end

end
