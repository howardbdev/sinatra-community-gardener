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

  # 2019-03-05

    - add SysRandom <-- on hold for now
  - Add a user landing page ? show? dashboard?  some work DONE -- more to do!
  - Add appropriate navigation -- we don't want users to ever have to touch/type in the browser URL bar DONE (for now)
  - Think about CR (CRUD - create & read) of gardens (garden create, plant create, also show and index) DONE (for now)


  TO CREATE A GARDEN WE NEED:
    CONTROLLER ACTIONS:
      - post '/gardens' PENDING
    VIEWS:
      - gardens/show <-- show the new garden PENDING

  - Make gardens links in user show page

  - Add gardens show view and route DONE
  - add gardens edit/patch routes and view DONE
  - add gardens new/create routes and view DONE
  - add gardens delete route and links DONE
  - add gardens index action and view DONE
  - add some more nav links to layout DONE

  # 2019-03-12

  CONTROLLER ACTIONS:
    - post '/gardens' DONE (FOR NOW...)
  VIEWS:
    - gardens/show <-- show the new garden PENDING

    - Make gardens links in user show page

  - Add messages to user on form failure (flash messages)
  - Fix link if logged out and looking at index
- protections for editing and deleting gardens!

# 2019-03-19
  - gardens/show <-- show the new garden DONE
  - Make gardens links in user show page DONE
  - Add messages to user on form failure (flash messages) NOT STARTED
  - Fix link if logged out and looking at index DONE
  - protections for editing and deleting gardens! DONE
  - add login/signup links anywhere we aren't logged in
