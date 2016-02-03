#require 'httparty'
require 'open-uri'
require 'json'

module UsersHelper

  # Returns the Gravatar for the given user.
  def gravatar_for(user, options = { size: 80 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    
    gravatar_url = ""
    #gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    #image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end


   ### add current user ID in call back

   def invoice
     secret = "If Merchant has Current QR codes, if not display go to home to add QR codes"
     #my_address = "19ZiUP1XREn1Mvyu4H77tdHietexFpsLpi"
     #my_callback_url = "http://73.153.42.64:3000/apiresponse&#{secret}"
     ##root_url = "https://blockchain.info/api/receive"
     #callback = URI.encode(my_callback_url)
     #base_url = "https://blockchain.info/api/receive?method=create&address=#{my_address}&callback=#{callback}"
     #base_url = "https://blockchain.info/api/receive?method=create&address=#{my_address}"
     #response = HTTParty.get(base_url)
     #data = JSON.parse(response.body)
     #puts data[:input_address]
     #data.each do |key, array|
     #@invoice = "Send Payment to #{array}" if key == 'input_address'
     # end
   end 

end
