require 'pry'
class NikeShoes::Shoes

  attr_accessor :price, :name, :gender

@@all = []

  def self.all
    @@all
  end


    def save
      @@all << self
    end

    def self.get_shoe_info
      doc = Nokogiri::HTML(open('https://store.nike.com/us/en_us/pw/shoes/oi3?ipp=120'))

      # doc.css('.product-name').text.split("\n").map(&:strip).select do |shoe_name|
      #      shoe_name.length > 0


      doc.css(".grid-item-info").each do |sneaker|
        shoe = self.new
        #if sneaker.css.product_name ....does not equal nil then
        shoe.name = sneaker.css(".product-name").text.split("\n").map(&:strip)[1]
        #extract out nil
        { name
         gender
       price
       

     }
        shoe.save

      end

      #gender for each shoe


      binding.pry
      shoe.price = doc.css(".grid-item-info").css('.product-price').css("span.local").children.map { |price| price.text }.compact

      shoe
    end


    def deeper_method

      attribute- description 
      
    end 


end
