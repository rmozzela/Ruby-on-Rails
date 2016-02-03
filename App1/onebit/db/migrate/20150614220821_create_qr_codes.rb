class CreateQrCodes < ActiveRecord::Migration
  def change
    create_table :qr_codes do |t|
      t.string :unique_key
      t.string :value
      t.string :merchant_id
      t.string :customer_email
      t.string :customer_name
      t.datetime :expiration_date
      t.boolean :update_flag
      t.references :user, index: true


      t.timestamps null: false
    end
    add_index :qr_codes, [:user_id, :created_at]
  end
end
