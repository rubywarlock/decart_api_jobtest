require "net/http"

namespace :test_bearer do
  desc "Test Bearer API Authorization"

  task run: :environment do
    Net::HTTP.get_response("postman-echo.com", "/status/200")
  end

end
