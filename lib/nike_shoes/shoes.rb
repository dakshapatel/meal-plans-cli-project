require "pry"
class NikeShoes::Shoes
  attr_accessor :name,

def self.all

end

def self.scrape_shoes

doc = Nokogiri::HTML(open('https://store.nike.com/us/en_us/pw/mens-shoes/7puZoi3'))
doc.css('.product-display-name').each do |shoe_name|
  name = shoe_name.text
binding.pry

end
end

end
