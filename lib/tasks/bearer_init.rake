#require "net/http"
#require "net/https"
#require "bearer-agent"

namespace :bearer_init do
  desc "Initialize BEARER"
  task run: :environment do
=begin
    Bearer.init_config do |config|
      config.secret_key = "sk_production_PTbWALhx_4O7syBTTw9oMuvFoTWzpggB"
    end

    Net::HTTPS.get_response("decart-currency.herokuapp.com")
=end
  end
end
