require_relative "./config/environment"

# mount my controllers!!
use UsersController
use SessionsController
use GardensController
run ApplicationController
