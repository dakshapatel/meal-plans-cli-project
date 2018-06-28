
require 'pry'
class NikeShoes::CLI


  def call
    list_gender
    start
  end

  def list_gender
    puts "Welcome to Nike Shoes!"
    puts "What is your gender?"
    puts <<~DOC
    1. Men's
    2. Women's
    3. Big Kids'
    4. Little Kids'

    DOC
    NikeShoes::Shoes.get_shoe_info
    NikeShoes::Shoes.gender("Men's").each.with_index(1) do |shoe, i|
      puts "#{i}. #{shoe.name} - #{shoe.price}- #{shoe.gender}."
    end
    dakota = binding
    dakota.pry 
  end

  def start
    input = "nil"
    while input != "exit"
      puts "Enter the number associated with the gender or type exit"
      input = gets.strip

      case input
        when "1"
          NikeShoes::Shoes.gender("Men's").each.with_index(1) do |shoe, i|
            puts "#{i}. #{shoe.name} - #{shoe.price}- #{shoe.gender}."
          end
        when "2"
          NikeShoes::Shoes.gender("Men's").each.with_index(1) do |shoe, i|
            puts "#{i}. #{shoe.name} - #{shoe.price}- #{shoe.gender}."
          end
        when "3"
          NikeShoes::Shoes.gender("Men's").each.with_index(1) do |shoe, i|
            puts "#{i}. #{shoe.name} - #{shoe.price}- #{shoe.gender}."
          end
        when "4"
          NikeShoes::Shoes.gender("Men's").each.with_index(1) do |shoe, i|
            puts "#{i}. #{shoe.name} - #{shoe.price}- #{shoe.gender}."
          end
        when "back"
          list_gender
        when "exit"
          puts "Good-Bye!"
        else
          puts "Please pick from the following:"
          list_gender
        end
    end
  end
end
