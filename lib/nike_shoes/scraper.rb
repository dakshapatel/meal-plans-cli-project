require "pry"

class NikeShoes::Scraper


  def scrape_shoe_index

    doc = Nokogiri::HTML(open('https://store.nike.com/us/en_us/pw/shoes/oi3?ipp=120'))
    shoes = []

      doc.css('.grid-item-content').each do |card|
        card.css('.grid-item-info').each do |shoe|
          description = doc.css('.product-name').text
           #.select do |shoe_name|
                  #shoe_name.length > 0
          #end
          price = doc.css('.prices').text.split("\n").map(&:strip) #.select do |shoe_price|
            #shoe_price.length > 0
          end
        end
        shoes


  end
end

  # scraper = Scraper.new
  # names = scraper.get_names
  # prices = scraper.get_prices
  #
  # (0...prices.size).each do |index|
  #   puts "- - - index: #{index + 1} - - - "
  #   puts "Name: #{names[index]} | price: #{prices[index]}"
  #
  # end
