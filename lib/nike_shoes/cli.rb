
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

    puts "Enter the number associated with the gender or type exit"

    NikeShoes::Shoes.get_shoe_info
    NikeShoes::Link.shoe_description


  end

  def start
    input = "nil"
    while input != "exit"
      input = gets.strip

      case input
        when "1"
          puts "Click on the link of the shoe you would like more information on?"
          NikeShoes::Shoes.gender("Men's").each.with_index(1) do |shoe, i|
            puts "#{i}. #{shoe.name} - #{shoe.price}- #{shoe.gender}- #{shoe.url}."
          end
          # NikeShoes::Shoes.description.each.with.index(+ 1) do |number, i|
          #   puts
        when "2"
          puts "Enter the number of the shoe you would like more information on?"
          NikeShoes::Shoes.gender("Women's").each.with_index(1) do |shoe, i|
            puts "#{i}. #{shoe.name} - #{shoe.price}- #{shoe.gender}."
          end
        when "3"
          puts "Enter the number of the shoe you would like more information on?"
          NikeShoes::Shoes.gender("Big Kids'").each.with_index(1) do |shoe, i|
            puts "#{i}. #{shoe.name} - #{shoe.price}- #{shoe.gender}."
          end
        when "4"
          puts "Enter the number of the shoe you would like more information on?"
          NikeShoes::Shoes.gender("Little Kids'").each.with_index(1) do |shoe, i|
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
