require_relative "./config/environment"

# mount my controllers!!
use UsersController
use SessionsController
run ApplicationController
