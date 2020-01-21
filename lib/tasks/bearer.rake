namespace :bearer do
  desc "TODO"
  task init: :environment do

    Bearer.init_config do |config|
      config.secret_key = "sk_production_PTbWALhx_4O7syBTTw9oMuvFoTWzpggB"
    end
  end

end
