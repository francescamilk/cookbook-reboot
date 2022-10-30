require_relative "controllers/recipes_controller"
require_relative "router"

controller = Controller.new(cookbook)
router = Router.new(controller)

# Start the app
router.run
