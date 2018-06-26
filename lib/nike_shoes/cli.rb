
require 'pry'
class NikeShoes::CLI

  attr_accessor

  def call
    NikeShoes::Shoes.new.shoes
    puts "Welcome to Nike Shoes!"
    start
  end

  def start
    puts "What is your price range?"
    input = nil
    while input != "exit"
    input = gets.strip
    print_shoes(input)

    case input
    when "1"
      puts "lists shoes in the 50-100 price range"
    when "2"
      puts "lists shoes in the 100-150 price range"
    when "3"
      puts "lists shoes in the 150-200 price range"
    when "back"
      list_price
    else
      puts "return to the main menu"
    end
  end
  
end
