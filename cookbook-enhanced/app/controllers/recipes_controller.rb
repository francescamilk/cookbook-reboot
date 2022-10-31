require_relative "../views/recipes_view"
require_relative "../models/recipe"

class RecipesController
  def initialize
    @view = RecipesView.new
  end

  # USER ACTIONS
  def list
    # 1. Retrieve all the recipes (Model)
    recipes = Recipe.all
    # 2. Pass the recipes to the view for display (View)
    @view.display(recipes)
  end

  def create
    # 1. Ask the user for a name (View)
    name = @view.ask_for("name")
    # 2. Ask the user for a description (View)
    description = @view.ask_for("description")
    # 3. Create instance of recipe & save it (Model)
    # recipe = Recipe.new(name: name, description: description)
    # recipe.save
    Recipe.create(name: name, description: description)

    list()
  end

  def destroy
    # 1. Display all recipes (View)
    list()
    # 2. Ask the user which to delete - by id (View)
    id = @view.ask_id
    # 3. Find recipe by id (Model)
    recipe = Recipe.find(id)
    # 4. Delete given recipe (Model)
    recipe.destroy

    list()
  end

  def mark_as_done
    # 1. Display all recipes (View)
    list()
    # 2. Ask the user which to update - by id (View)
    id = @view.ask_id
    # 3. Find recipe by id (Model)
    recipe = Recipe.find(id)
    # 4. Update the given recipe's 'done' status (Model)
    recipe.done = !recipe.done
    recipe.save
    # recipe.mark!

    list()
  end
end