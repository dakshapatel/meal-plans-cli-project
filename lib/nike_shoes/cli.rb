
require 'pry'
class NikeShoes::CLI

  attr_accessor

  def call
    puts "Welcome to Nike Shoes!"
    puts "What is your price range?"

    NikeShoes::Shoes.scrape_shoes

    # list_price
    # start
  end

  def list_price
    puts <<~DOC
    1. 50 - 100
    2. 100- 150
    3. 150 -200
    DOC
    (0...prices.size).each do |index|
      puts "- index:#{index +1} -"
      puts "Name: #{names[index]} | price: #{prices[index]}"
  end
end

  def start

    input = "nil"
    while input != "exit"
      puts "Enter the number to see shoes in your price range or type exit"
      input = gets.strip

      # if input.to_i > 0
      #   the_shoe = @shoes[input.to_i -1]
      #   puts "#{the_shoe.price}"
      # elsif input.to_i > 100
      #   the_shoe
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
