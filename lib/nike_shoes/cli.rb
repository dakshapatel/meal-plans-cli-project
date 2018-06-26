
require 'pry'
class NikeShoes::CLI

  attr_accessor

  def call
    puts "Welcome to Nike Shoes!"
    puts "What is your price range?"
    list_price
    start
  end

  def list_price
    puts <<~DOC
    1. 50 - 100
    2. 100- 150
    3. 150 -200
    DOC
  end

  def start

    input = ""
    while input != "exit"

      input = gets.strip
      case input
        when "1"
          puts "lists shoes in 50-100 price range"
        when "2"
          puts "lists shoes in the 100-150 price range"
        when "3"
          puts "lists shoes in the 150-200 price range"
        when "back"
          list_price
        when "exit"
          puts "Good-Bye!"
        else
          puts "Please pick from the following:"
          list_price
        end
    end
  end




end
