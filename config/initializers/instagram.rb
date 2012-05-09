require "instagram"

Instagram.configure do |config|
  config.client_id = "a5ec0f0dbc57409aa26e08d47ef4906e"
  config.client_secret = "d4ef6fd3bae446cf8bbe7cb0a0b992a4"
end

CALLBACK_URL = "http://localhost:3000/session/callback"