
require 'pry'
class NikeShoes::CLI


  def call
    list_gender
    NikeShoes::Shoes.get_shoe_info
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

    puts "Enter the number associated with the gender or type exit"
  end

  def start
    input = "nil"
    while input != "exit"
      input = gets.strip

      case input
        when "1"
          puts "Enter the number of the shoe you would like more information on?"
          NikeShoes::Shoes.gender("Men's").each.with_index(1) do |shoe, i|
            puts "#{i}. #{shoe.name} - #{shoe.price}- #{shoe.gender}- #{shoe.url}."
          end
          NikeShoes::Shoes.display_shoe("Men's")

        when "2"
          puts "Enter the number of the shoe you would like more information on?"
          NikeShoes::Shoes.gender("Women's").each.with_index(1) do |shoe, i|
            puts "#{i}. #{shoe.name} - #{shoe.price}- #{shoe.gender}."
          end
          NikeShoes::Shoes.display_shoe("Women's")
        when "3"
          puts "Enter the number of the shoe you would like more information on?"
          NikeShoes::Shoes.gender("Big Kids'").each.with_index(1) do |shoe, i|
            puts "#{i}. #{shoe.name} - #{shoe.price}- #{shoe.gender}."
          end
          NikeShoes::Shoes.display_shoe("Big Kids'")
        when "4"
          puts "Enter the number of the shoe you would like more information on?"
          NikeShoes::Shoes.gender("Little Kids'").each.with_index(1) do |shoe, i|
            puts "#{i}. #{shoe.name} - #{shoe.price}- #{shoe.gender}."
          end
          NikeShoes::Shoes.display_shoe("Little Kids'")
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
