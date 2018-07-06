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


end
