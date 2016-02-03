class AddEmailMessageToQrCodes < ActiveRecord::Migration
  def change
    add_column :qr_codes, :email_message, :text
  end
end
