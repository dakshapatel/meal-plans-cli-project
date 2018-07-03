require 'pry'
class NikeShoes::Shoes

  attr_accessor :name, :gender, :price, :description_link

    @@all = []

    def self.all
      @@all
    end

    def self.gender (gender)

      self.all.select do |shoe|
        shoe.gender.include?(gender)

      end

    end

    def self.create_from_hash(shoe_hash)
      shoe = self.new
      shoe.name = shoe_hash[:name]
      shoe.gender = shoe_hash[:gender]
      shoe.price = shoe_hash[:price]
      shoe.save unless shoe.name.empty?
    end

    def save
      @@all << self
    end

    def self.get_shoe_info
      doc = Nokogiri::HTML(open('https://store.nike.com/us/en_us/pw/shoes/oi3?ipp=120'))

      doc.css(".grid-item-content").each do |sneaker|

        shoe_hash = { name: sneaker.css('.product-display-name').text.split("\n").map(&:strip).join,
          gender: sneaker.css('.product-subtitle').text.split("\n").map(&:strip).join,
          price: sneaker.css('.product-price').text.split("\n").map(&:strip).join
          }

          self.create_from_hash(shoe_hash)
        end
      end


      def self.link_to_description(shoe_link)
          link = self.new
          link.description = shoe_link[:description_link]
          # binding.pry
      end


      def self.shoe_description
        doc = Nokogiri::HTML(open('https://store.nike.com/us/en_us/pw/shoes/oi3?ipp=120'))
          doc.css('div.grid-item-image-wrapper a').each do |link|
            shoe_link = { description_link: link.css('href')
            }
            self.link_to_description(shoe_link)
            binding.pry
       end
end


  # doc.css('div.grid-item-image-wrapper a').map {|link| link ['href']}
