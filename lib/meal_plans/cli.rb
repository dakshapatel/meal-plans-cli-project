
class MealPlans::CLI

  def call
    list_diet_plan
    menu
  end


  def list_diet_plan
    puts "Meal Delivery Plans:"
    puts <<~DOC
      1. Omnivore
      2. Carnivore
      3. Gluten-Free
      4. Vegan
      5. Paleo
      6. Vegetarian
      7. Keto
    DOC

  end

end 