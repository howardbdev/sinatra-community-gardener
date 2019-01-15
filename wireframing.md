# User stories
As a user, I can sign up and log in.
As a user, I can perform CRUD actions on plants in gardens for which they are a member
As a user, can I edit a garden?
As a user, I can edit my own information

# Models

## User (Gardener)
#### Attributes:
- slug (could be an attribute OR an instance method!)
- email
- name
- location

#### Associations:
- has many user_gardens
- has many gardens, through user_gardens
- has many plants, through gardens

## Garden
#### Attributes:
- name
- location
- garden_type

#### Associations:
- has many plants
- has many user_gardens
- has many users, through user_gardens

## Plant

#### Attributes:
- plant_type
- age (days?)
- growth period
- species
- description
- harvest time

#### Associations:
- belongs to garden
- has many users, through garden

## UserGarden
#### Attributes:
- user id
- garden id

#### Associations:
- belongs to user
- belongs to garden
