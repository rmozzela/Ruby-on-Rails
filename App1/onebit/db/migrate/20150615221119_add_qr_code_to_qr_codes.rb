class AddQrCodeToQrCodes < ActiveRecord::Migration
  def change
    add_column :qr_codes, :qr_code, :string
  end
end
