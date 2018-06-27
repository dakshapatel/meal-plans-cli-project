class NikeShoes::Shoes

  attr_accessor :price, :name


  def initialize(price, name)
    @price = price
    @name = name
  end


    def self.scrape_shoes
      shoes = self.new
      names = self.get_names
      prices = self.get_prices

    end


    def get_names
      doc = Nokogiri::HTML(open('https://store.nike.com/us/en_us/pw/shoes/oi3?ipp=120'))
      shoe.name = doc.css(".grid-item-info").css(".product-name").css('p').children.map { |name| name.text }.compact

    end

    def get_prices
      doc = Nokogiri::HTML(open('https://store.nike.com/us/en_us/pw/shoes/oi3?ipp=120'))
      shoe.price = doc.css(".grid-item-info").css('.product-price').css("span.local").children.map { |price| price.text }.compact
    end

end
