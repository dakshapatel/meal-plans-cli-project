require 'pry'

class NikeShoes::Scraper




  def self.get_shoe_info

    doc = Nokogiri::HTML(open('https://store.nike.com/us/en_us/pw/shoes/oi3?ipp=120'))

    doc.css(".grid-item-content").map do |sneaker|

      shoe_hash = { name:          sneaker.css('.product-display-name').text.split("\n").map(&:strip).join,
        gender: sneaker.css('.product-subtitle').text.split("\n").map(&:strip).join,
        price: sneaker.css('.product-price').text.split("\n").map(&:strip).join,
        colors: sneaker.css('.number-of-colors').text.split("\n").map(&:strip).join,
        url: sneaker.css('div.grid-item-image-wrapper a').map {|link| link ['href']}
        }
         NikeShoes::Shoes.create_from_hash(shoe_hash)
      end
    end


end
