require "pry"
class NikeShoes::Shoes
  attr_accessor :name, :price, :color_options

  def self.all

  end

  def self.scrape_shoes

    doc = Nokogiri::HTML(open('https://store.nike.com/us/en_us/pw/shoes/oi3?ipp=120'))

    color_options = doc.css('.number-of-colors').text.split("\n").map(&:strip).select do |number_of_color_options|
      number_of_color_options.length > 0
    end



    price = doc.css('.prices').text.split("\n").map(&:strip).select do |shoe_price|
      shoe_price.length > 0
    end


    name = doc.css('.product-name').text.split("\n").map(&:strip).select do |shoe_name|
     shoe_name.length > 0
    end
  

  [color_options, price, name]
  end




end
