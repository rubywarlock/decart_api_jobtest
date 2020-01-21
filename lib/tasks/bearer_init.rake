namespace :bearer_init do
  desc "Initialize BEARER"
  task run: :environment do
    Bearer.init_config do |config|
      config.secret_key = "sk_production_PTbWALhx_4O7syBTTw9oMuvFoTWzpggB"
    end
  end
end
