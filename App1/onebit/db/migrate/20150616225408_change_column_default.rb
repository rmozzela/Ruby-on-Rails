class ChangeColumnDefault < ActiveRecord::Migration
  def up 
    change_column :qr_codes, :update_flag, :boolean, :default => false
  end

  
  def down 
    change_column :qr_codes, :update_flag, :boolean, :default => nil
  end


end
