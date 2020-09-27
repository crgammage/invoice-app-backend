class UsersController < ApplicationController

    def index
        users = User.all
    end

    def show
        user = User.find(params[:id])
    end

    def create
        user = User.create(user_params)
    end


private

def users_params
    params.require(:user).permit(:name, :username, :password, :password_confirmation)
end

end