class ClientsController < ApplicationController

    def index
        clients = Client.all
        render json: clients, except: [:updated_at, :created_at]
    end

    def show
        client = Client.find(params[:id])
        render json: client, except: [:updated_at, :created_at]
    end

    private

    def clients_params
        params.rquire(:client).permit(:name, :address)
    end
end
