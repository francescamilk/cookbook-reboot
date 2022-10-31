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
    # 2. Ask the user for a description (View)
    # 3. Create instance of recipe & save it (Model)
  end

  # def destroy
  # end

  # def mark_as_done
  # end
end