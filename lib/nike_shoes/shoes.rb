require 'pry'
class NikeShoes::Shoes

  attr_accessor :name, :gender, :price, :url, :colors

    @@all = []

    def self.all
      @@all
    end

    def self.gender (gender)
      self.all.select do |shoe|
        shoe.gender.include?(gender)
      end
    end

    def self.display_shoe(gender)
      input = gets.strip
      index = input.to_i - 1
      shoe = NikeShoes::Shoes.gender(gender)[index]
      puts "Name: #{shoe.name}"
      puts "Price: #{shoe.price}"
      puts "Colors: #{shoe.colors}"
      puts "Url: #{shoe.url}"
    end

    def self.create_from_hash(shoe_hash)
      shoe = self.new
      shoe.name = shoe_hash[:name]
      shoe.gender = shoe_hash[:gender]
      shoe.price = shoe_hash[:price]
      shoe.colors = shoe_hash[:colors]
      shoe.url = shoe_hash [:url]
      shoe.save unless shoe.name == " "
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
          colors: sneaker.css('.number-of-colors').text.split("\n").map(&:strip).join,
          url: sneaker.css('div.grid-item-image-wrapper a').map {|link| link ['href']}
          }
          self.create_from_hash(shoe_hash)

        end
      end
end
