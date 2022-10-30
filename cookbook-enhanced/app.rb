require 'active_record'

require_relative "router"
require_relative "app/controllers/recipes_controller"

controller = RecipesController.new
router = Router.new(controller)

# Start the app
router.run
