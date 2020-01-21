require "net/http"
require "net/https"
require "bearer-agent"

namespace :bearer_init do
  desc "Initialize BEARER"
  task run: :environment do
    Bearer.init_config do |config|
      config.secret_key = "sk_production_PTbWALhx_4O7syBTTw9oMuvFoTWzpggB"
    end

    Net::HTTP.get_response("postman-echo.com", "/status/200")
  end
end
