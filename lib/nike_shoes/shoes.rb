require 'pry'
class NikeShoes::Shoes

  attr_accessor :name, :gender, :price, :url

    @@all = []

    def self.all
      @@all
    end

    def self.gender (gender)
      self.all.select do |shoe|
        shoe.gender.include?(gender)
      end
    end


    def self.description(link)
      self.all select do |i|
        shoe.link.include?(link)
      end
    end 


    end


    def self.create_from_hash(shoe_hash)
      shoe = self.new
      shoe.name = shoe_hash[:name]
      shoe.gender = shoe_hash[:gender]
      shoe.price = shoe_hash[:price]
      shoe.url = shoe_hash [:url]
      shoe.save unless shoe.name.empty?
      #binding.pry
    end


    def save
      @@all << self
    end

    def self.get_shoe_info
      doc = Nokogiri::HTML(open('https://store.nike.com/us/en_us/pw/shoes/oi3?ipp=120'))

      doc.css(".grid-item-content").each do |sneaker|

        shoe_hash = { name:          sneaker.css('.product-display-name').text.split("\n").map(&:strip).join,
          gender: sneaker.css('.product-subtitle').text.split("\n").map(&:strip).join,
          price: sneaker.css('.product-price').text.split("\n").map(&:strip).join,
          url: sneaker.css('div.grid-item-image-wrapper a').map {|link| link ['href']}
          }
          self.create_from_hash(shoe_hash)
          #binding.pry
        end
      end
end
