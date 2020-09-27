class User < ApplicationRecord
    has_many :invoices
    has_many :clients, through: :invoices
    attr_accessor :password, :password_confirmation
end
