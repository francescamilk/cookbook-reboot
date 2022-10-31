class RecipesView
  def display(recipes)
    recipes.each do |recipe|
      puts "#{recipe.id}. #{recipe.name}"
    end
  end

  def ask_name
    puts "Name of the recipe?"
    gets.chomp
  end

  def ask_id
    puts "Which one (type id) ?"
    gets.chomp.to_i
  end

  # def ask_description
  #   puts "Description of the recipe?"
  #   gets.chomp
  # end
end
