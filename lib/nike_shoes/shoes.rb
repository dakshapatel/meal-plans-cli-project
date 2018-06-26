class NikeShoes::Shoes

  attr_accessor :price, :description

  # def self.new_from_index_page(r)
  #   sel.new()
  #
  # end

  def initialize (price = nil, description = nil)
    @price = price
    @description = description
  end

  def get_prices(price)
    Scraper.scrape_shoe_index.price.select do |shoe_price|
      shoe_price.length > 0
    end
  end


  def get_names(description)
    Scraper.scrape_shoe_index.description.select do |shoe_name|
      shoe_name.length > 0
    end
  end

  def self.all
    @@all
  end

end
# def self.create(price)
#   new_shoe = new(price)
#
#
# end
