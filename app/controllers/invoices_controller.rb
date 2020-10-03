class InvoicesController < ApplicationController

    def index
        invoices = Invoice.all
        render json: invoices, except: [:updated_at, :created_at]
    end

    def show
        invoice = Invoice.find(params[:id])
        render json: invoice, except: [:updated_at, :created_at]
    end

    private

    def invoices_params
        params.require(:invoice).permit(:title, :description, :currency, :language, :date, :due_date, :order_number, :item, :quantity, :rate, :amount, :note, :user, :client)
    end
end
