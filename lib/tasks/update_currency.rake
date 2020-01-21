require "nokogiri"
require "net/http"

namespace :update_currency do
  desc "Update or create currencies"

  task run: :environment do
    begin
      url = URI.parse(URI.escape("http://www.cbr.ru/scripts/XML_daily.asp"))
      page = Nokogiri::XML(Net::HTTP.get(url))

      page.xpath("ValCurs/Valute").each do |valute|
        code = valute.xpath("CharCode").text
        rate = valute.xpath("Value").text
        name = valute.xpath("Name").text

        currency = Currency.find_or_create_by!(code: code, name: name)
        currency.update!(rate: rate)
      end

    rescue Exception => e
      puts "Error CONNECT. Message: #{e.message}"
    end


  end
end
