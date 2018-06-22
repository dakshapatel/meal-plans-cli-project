
class NikeShoes::CLI

  def call
    # puts "hey its working"
    # list_price
    # menu
    NikeShoes::Shoes.scrape_shoes

  end
end

#   def list_price
#     puts <<~DOC
#     1. 50 - 100
#     2. 100 - 150
#     3. 150 - 200
#     DOC
#   end
#
#   def menu
#     puts "Enter the number of the price range to see a list of shoes."
#     input = nil
#     while input != "exit"
#     input = gets.strip
#     case input
#     when "1"
#       puts "lists shoes in the 50-100 price range"
#     when "2"
#       puts "lists shoes in the 100-150 price range"
#     when "3"
#       puts "lists shoes in the 150-200 price range"
#     when "back"
#       list_price
#     else
#       puts "return to the main menu"
#     end
#   end
#
# end
#
# end
