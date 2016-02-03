module QrCodeModule
  extend ActiveSupport::Concern

  included do
    #after_create :generate_qr_code
    before_create :generate_qr_code
  end

  protected

  def generate_qr_code
    self.qr_code = loop do
      qr_code_temp = "test"
      #qr_code_temp = :unique_key
      break qr_code_temp unless self.class.exists?(qr_code: qr_code_temp)
    end
  end
end 
