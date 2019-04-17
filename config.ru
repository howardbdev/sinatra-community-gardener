require_relative "./config/environment"

# Middleware that allows us to send requests other than POST and GET, such as PATCH and DELETE
use Rack::MethodOverride
# mount my controllers!!
use UsersController
use SessionsController
use GardensController
use PlantsController
run ApplicationController
