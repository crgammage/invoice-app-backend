class ClientsController < ApplicationController

    def index
        clients = Client.all
    end

    def show
        client = Client.find(params[:id])
    end

    private

    def clients_params
        params.rquire(:client).permit(:name, :address)
    end
end
