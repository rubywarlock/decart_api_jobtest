Bearer::Configuration.setup do |config|
  # config.api_key = "sk_production_PTbWALhx_4O7syBTTw9oMuvFoTWzpggB" # copy and paste the `Secret Key` from https://app.bearer.sh/keys
  # config.client_id = "sk_production_PTbWALhx_4O7syBTTw9oMuvFoTWzpggB" # copy and paste the `Publishable Key` from https://app.bearer.sh/keys
  config.secret = "sk_production_PTbWALhx_4O7syBTTw9oMuvFoTWzpggB" # copy and paste the `Encryption Key` from https://app.bearer.sh/keys
end

=begin
Bearer::Configuration.setup do |config|
  # config.api_key = "sk_production_PTbWALhx_4O7syBTTw9oMuvFoTWzpggB"
  config.secret = "sk_production_PTbWALhx_4O7syBTTw9oMuvFoTWzpggB" ## Used for the WebHook
end
=end

=begin
Bearer.init_config do |config|
  config.secret_key = "sk_production_PTbWALhx_4O7syBTTw9oMuvFoTWzpggB"
end
=end
