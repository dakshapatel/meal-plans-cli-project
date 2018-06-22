require "pry"
class NikeShoes::Shoes
  attr_accessor :name,

  def self.all

  end

  def self.scrape_shoes

    doc = Nokogiri::HTML(open('https://store.nike.com/us/en_us/pw/mens-shoes/7puZoi3'))

    price = doc.css('.prices').text.split("\n").map(&:strip).select do |shoe_price|
      shoe_price.length > 0
    end


    name = doc.css('.product-name').text.split("\n").map(&:strip).select do |shoe_info|
     shoe_info.length > 0
    end
  binding.pry
  end




end
