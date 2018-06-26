require "pry"
class NikeShoes::Shoes
  attr_accessor :parse_page


  def initialize
    doc = Nokogiri::HTML(open('https://store.nike.com/us/en_us/pw/shoes/oi3?ipp=120'))
    @parse_page ||= Nokogiri::HTML(doc)


  end

  def get_names
    item_container.css('.grid-item-info').css('.product-name').css('p').children.map {|name| name.text}.compact
  end

  def get_prices
    item_container.css('.grid-item-info').css('.product-price').css(span.local).children.map {|price| price.text}.compact
  end

  def item_container
    parse_page.css('.grid-item-info')
  end

  scraper = Scraper.new
  names = scraper.get_names
  prices = scraper.get_prices

  (0...prices.size).each do |index|
    puts "- - - index: #{index + 1} - - - "
    puts "Name: #{names[index]} | price: #{prices[index]}"

  end
end


#   def self.scrape_shoes_price
#
#     doc = Nokogiri::HTML(open('https://store.nike.com/us/en_us/pw/shoes/oi3?ipp=120'))
#
#     price = doc.css('.prices').text.split("\n").map(&:strip).select do |shoe_price|
#       shoe_price.length > 0
#     end
#     all
#
# end
#
# def self.scrape_shoes_description
#     shoe_description = doc.css('.product-name').text.split("\n").map(&:strip).select do |shoe_name|
#      shoe_name.length > 0
#     end
# end
