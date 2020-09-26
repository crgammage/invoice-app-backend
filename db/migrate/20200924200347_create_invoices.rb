class CreateInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices do |t|
      t.string :title
      t.string :description
      t.string :currency
      t.string :language
      t.string :date
      t.string :due_date
      t.integer :order_number
      t.string :item
      t.integer :quantity
      t.integer :rate
      t.integer :amount
      t.string :note

      t.timestamps
    end
  end
end
