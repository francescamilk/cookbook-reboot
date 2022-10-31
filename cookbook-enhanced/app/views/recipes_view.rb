class RecipesView
  def display(recipes)
    recipes.each do |recipe|
      done = recipe.done ? "[x]" : "[ ]"
      puts "#{recipe.id}. #{recipe.name} #{done}"
    end
  end

  def ask_for(stuff)
    puts "#{stuff.capitalize} of the recipe?"
    gets.chomp
  end

  # def ask_name
  #   puts "Name of the recipe?"
  #   gets.chomp
  # end
  
  # def ask_description
  #   puts "Description of the recipe?"
  #   gets.chomp
  # end

  def ask_id
    puts "Which one (type id) ?"
    gets.chomp.to_i
  end
end
