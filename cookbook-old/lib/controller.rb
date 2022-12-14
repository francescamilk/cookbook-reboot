require_relative "view"
require_relative "recipe"

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
  end

  # USER ACTIONS
  
  def list
    # 1. Get recipes (repo)
    recipes = @cookbook.all
    # 2. Display recipes in the terminal (view)
    @view.display_list(recipes)
  end

  def create
    # 1. Ask user for a name (view)
    name = @view.ask_user_for("name")
    # 2. Ask user for a description (view)
    description = @view.ask_user_for("description")
    # 3. Ask user for rating (view)
    rating = @view.ask_user_for("rating")
    # 4. Ask user for prep time (view)
    prep_time = @view.ask_user_for("prep_time")
    # 5. Create recipe (model)
    recipe = Recipe.new(name: name, description: description, rating: rating, prep_time: prep_time)
    # 6. Store in cookbook (repo)
    @cookbook.add(recipe)
    # 7. Display
    display_recipes
  end

  def destroy
    # 1. Display recipes
    display_recipes
    # 2. Ask user for index (view)
    index = @view.ask_user_for_index
    # 3. Remove from cookbook (repo)
    @cookbook.remove_at(index)
    # 4. Display
    display_recipes
  end

  def mark_as_done
    # 1. Display recipes
    display_recipes
    # 2. Ask user for an index (view)
    index = @view.ask_user_for_index
    # 3. Mark as done and save (repo)
    @cookbook.mark_recipe_as_done(index)
    # 4. Display recipes
    display_recipes
  end
end
