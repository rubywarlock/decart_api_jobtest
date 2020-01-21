=begin
Bearer::Configuration.setup do |config|
  config.api_key = "BEARER_SECRET_KEY" # copy and paste the `Secret Key` from https://app.bearer.sh/keys
  config.client_id = "BEARER_PUBLISHABLE_KEY" # copy and paste the `Publishable Key` from https://app.bearer.sh/keys
  # config.encryption_key = "secret" # copy and paste the `Encryption Key` from https://app.bearer.sh/keys
  config.secret_key = "sk_production_PTbWALhx_4O7syBTTw9oMuvFoTWzpggB" # copy and paste the `Encryption Key` from https://app.bearer.sh/keys
end
=end

=begin
Bearer.init_config do |config|
  config.secret_key = "sk_production_PTbWALhx_4O7syBTTw9oMuvFoTWzpggB"
end
=end
