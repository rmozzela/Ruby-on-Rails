class QrCode < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true

  include Tokenable
  before_create :generate_qr_code

  def generate_qr_code
   
   qr_code_generate = RQRCode::QRCode.new('192.168.1.4:3000/'+self.value+self.unique_key, :size => 7, :level => :h)
    image = qr_code_generate.as_png
    self.qr_code = qr_code_generate
    File.write("/home/miki2/Desktop/App1/onebit/app/assets/images/#{unique_key}.png",image )
  end
 
 def activate
    update_attribute(:update_flag,    true)
    update_attribute(:updated_at, Time.zone.now)
  end

end
