class InvoicesController < ApplicationController

    def index
        invoices = Invoice.all
    end

    def show
        invoice = Invoice.find(params[:id])
    end

    private

    def invoices_params
        params.require(:invoice).permit(:title, :description, :currency, :language, :date, :due_date, :order_number, :item, :quantity, :rate, :amount, :note, :user, :client)
    end
end
