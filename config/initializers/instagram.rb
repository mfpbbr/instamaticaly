require "instagram"

Instagram.configure do |config|
  config.client_id = "8ee4c7bff9bd46349f535546db25696c"
  config.client_secret = "79da2c9b5dc54ea392acc0baa8715d00"
end

CALLBACK_URL = "http://foononymous.herokuapp.com/session/callback"