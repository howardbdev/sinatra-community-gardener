require_relative "./config/environment"

# mount my controllers!!
use SessionsController
run ApplicationController
