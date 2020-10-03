class UsersController < ApplicationController

    def index
        users = User.all
        render json: users, except: [:updated_at, :created_at]
    end

    def show
        user = User.find(params[:id])
        render json: user, except: [:updated_at, :created_at]
    end

private

def user_params
    params.require(:user).permit(:name, :username, :password_digest)
end
