
require 'pry'
class NikeShoes::CLI


  def call

    list_gender
    start
    NikeShoes::Shoes.scrape_shoes

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
  end
end

  def start

    input = "nil"
    while input != "exit"
      puts "Enter the number to see shoes in your gender or type exit"
      input = gets.strip

      case input
        when "1"
          NikeShoes::Shoes.get_names.select { |name| name.include?("Men's")}
          puts "List of Men's shoes."
        when "2"
          NikeShoes::Shoes.get_names.select { |name| name.include?("Women's")}
          puts "List of Women's shoes."
        when "3"
          NikeShoes::Shoes.get_names.select { |name| name.include?("Big Kids'")}
          "List of Big Kids' shoes."
        when "4"
          NikeShoes::Shoes.get_names.select { |name| name.include?("Little Kids'")}
          "List of Little Kids' shoes."
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
