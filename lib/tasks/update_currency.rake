require "nokogiri"
require "net/http"

namespace :update_currency do
  desc "Update or create currencies"

  task run: :environment do
    begin
      url = URI.parse(URI.escape("http://www.cbr.ru/scripts/XML_daily.asp"))
      page = Nokogiri::XML(Net::HTTP.get(url))

      Currency.destroy_all

      page.xpath("ValCurs/Valute").each do |valute|
        code = valute.xpath("CharCode").text
        rate = valute.xpath("Value").text

        currency = Currency.find_or_create_by!(code: code)

        puts "current rate: #{currency.rate}, new rate: #{rate}"
        currency.update!(rate: rate)

        puts "============================================================"
        puts
      end

    rescue Exception => e
      puts "Error CONNECT. Message: #{e.message}"
    end


  end
end
