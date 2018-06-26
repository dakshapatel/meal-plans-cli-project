require "pry"
class NikeShoes::Shoes
  attr_accessor :shoe_description, :price

@@all = []

def initialize (shoe_description, price)
 @@all << self
end

  def self.all
    # binding.pry
    # @@all || = self.scrape_shoes.collect do |shoe_hash|
    #   self.new(shoe_hash)
    #end
  end

  def self.scrape_shoes_price

    doc = Nokogiri::HTML(open('https://store.nike.com/us/en_us/pw/shoes/oi3?ipp=120'))

    price = doc.css('.prices').text.split("\n").map(&:strip).select do |shoe_price|
      shoe_price.length > 0
    end

end

def self.scrape_shoes_description
    shoe_description = doc.css('.product-name').text.split("\n").map(&:strip).select do |shoe_name|
     shoe_name.length > 0
    end
end 

end
