class CreateInvoicepayments < ActiveRecord::Migration
  def change
    create_table :invoicepayments do |t|
      t.integer :invoice_id
      t.string :transaction_hash
      t.integer :value

      t.timestamps null: false
    end
  end
end
