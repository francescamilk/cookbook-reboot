class RecipesView
  def display(recipes)
    recipes.each do |recipe|
      puts "#{recipe.id}. #{recipe.name}"
    end
  end
end
