class NikeShoes::Shoes

  attr_accessor :price, :shoe_description

  @@all = []

  # def self.new_from_index_page(r)
  #   sel.new()
  #
  # end

  def initialize (price = nil, shoe_description = nil)
    @price = price
    @shoe_description = shoe_description
    @@all << self
  end


  def self.all
    @@all
  end

  def doc
     @doc ||= Nokogiri::HTML(open(self.url))
  end

end
