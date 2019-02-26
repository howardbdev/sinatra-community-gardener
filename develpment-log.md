## 2018-12-19 - wrote out wireframing and user stories

 - started building out the file structure

## 2019-01-15

### Goals:
- finish building out the basic file structure of the app
  - Still need config.ru
  - Still need to add controllers and views to app folder
- create out models - include associations
- create our migrations - including all attributes
- create a seed file - Still need this!
- test out models and our associations to make sure they are working the way we want


## 2019-01-22

### Goals:

- run back through our associations and models/migrations  CHECK
- create a seed file - Still need this!  CHECK
- test out models and our associations to make sure they are working the way we want  CHECK

## 2019-01-29

- Fix the `#slug` method!
- Incorporate sessions
  - add SessionsController  
  - add sign up/log in/log out functionality
  - make sure 'bcrypt' is in Gemfile CHECK
    - ^^ add `has_secure_password` to User model   CHECK
      - update existing users with passwords
  - add SysRandom (ENV[SESSION_SECRET])
- Add a 'user landing page' <-- this could be a user show page or a 'dashboard'

# 2019-02-05
  - Incorporate sessions
    - add SessionsController  
    - add sign up/log in/log out functionality
    - add SysRandom (ENV[SESSION_SECRET])
  - Add a 'user landing page' <-- this could be a user show page or a 'dashboard'

# 2019-02-05
  - Incorporate sessions
    - add sign up CHECKish/log in/log out functionality
    - application controller helper methods -- logged_in?  and current_user CHECK
    - add SysRandom (ENV[SESSION_SECRET])
  - Add a 'user landing page' <-- this could be a user show page or a 'dashboard'

# 2019-02-12

  - Incorporate sessions, cont'd

    - wrap up log/in/out
    - add SysRandom
  - Add a user landing page ? show? dashboard?
  - Fix root route

# 2019-02-26

  - Ensure login/signup/logout functionality is smooth
    - wrap up log/in/out
    - add SysRandom <-- on hold for now
  - Add a user landing page ? show? dashboard?  CONTINUE WORKING ON THIS
  - Add appropriate navigation -- we don't want users to ever have to touch/type in the browser URL bar
  - Think about CR of gardens (garden create, plant create, also show and index)


  TO CREATE A GARDEN WE NEED:
    CONTROLLER ACTIONS:
      - get '/gardens/new' <-- renders the form to create a garden DONE
      - post '/gardens' PENDING
    VIEWS:
      - gardens/new <-- contain the form DONE
      - gardens/show <-- show the new garden PENDING

  - Make gardens links in user show page
  - Stretch goal - allow user to edit his or her information
