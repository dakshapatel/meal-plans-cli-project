require 'pry'

class NikeShoes::Link

  attr_accessor :description

    @@all = []

    def self.all
      @@all
    end

    def self.link_to_description(shoe_link)
        link = self.new
        link.description = shoe_link

         #binding.pry
    end

    def self.shoe_description
      doc = Nokogiri::HTML(open('https://store.nike.com/us/en_us/pw/shoes/oi3?ipp=120'))
        shoe_link = doc.css('div.grid-item-image-wrapper a').map {|link| link ['href']}


          self.link_to_description(shoe_link)

     end


end
