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

### Goals:x

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
