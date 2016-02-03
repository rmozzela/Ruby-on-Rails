#require 'httparty'
require 'open-uri'
require 'json'

module UsersHelper

  # Returns the Gravatar for the given user.
  def gravatar_for(user, options = { size: 80 })
      gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
      size = options[:size]
      gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
      image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end


   ### add current user ID in call back

   def invoice
       secret = "AVWEadagraa22s"
       my_address = "1PJVoH1RQpWid3fctXU5w83Gx5YyzXVHcD"
       my_callback_url = "http://73.153.42.64:3000&#{secret}"
       root_url = "https://blockchain.info/api/receive"
    # parameters = "method=create&address=""#{my_address}""&callback="URI::encode(my_callback_url)
       callback = URI.encode(my_callback_url)
       puts callback
       base_url = "https://blockchain.info/api/receive?method=create&address=1PJVoH1RQpWid3fctXU5w83Gx5YyzXVHcD&callback=#{callback}"
       response = HTTParty.get(base_url)
       data = JSON.parse(response.body)
     #data.each_pair do |input_address|
     #@invoice = "Address: #{input_address}"
     #end
   end
#    invoice

end
