#require 'httparty'
require 'json'

module UsersHelper

  # Returns the Gravatar for the given user.
  def gravatar_for(user, options = { size: 80 })
      gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
      size = options[:size]
      gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
      image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end

   def invoice_for
       base_url = "http://blockchain.info/ticker"
       response = HTTParty.get(base_url)
       data = JSON.parse(response.body)
       data.each_pair do |ticker, stats|
       pp "Ticker: #{ticker} - 15m: #{stats['15m']}"
     end
   end
#    invoice
end
