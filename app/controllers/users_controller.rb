class UsersController < ApplicationController

    def index
        users = User.all
        render json: users, include: [:clients], except: [:updated_at, :createda_at]
    end

    def show
        user = User.find(params[:id])
        render json: user, except: [:updated_at, :createda_at]
    end

    def create
        user = User.create(user_params)
    end


private

def users_params
    params.require(:user).permit(:name, :username, :password, :password_confirmation)
end

end