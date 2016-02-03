module QrCodesHelper

  def delete_qr_code
      File.delete("/home/miki2/Desktop/App1/onebit/app/assets/images/#{unique_key}.png",
image)
  end

end
