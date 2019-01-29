# create some seed data to work with!

# make some users

meg = User.create(email: "meg@meg.com", location: "Philly", name: "Meg")
meg2 = User.create(email: "meg@othermeg.com", location: "Boston", name: "Meg")

kate = User.create(email: "kate@kate.com", location: "Tucson", name: "Kate")
connie = User.create(email: "connie@connie.com", location: "Columbia, MO", name: "Connie")


# make some gardens

veggie_garden = Garden.create(name: "Veggie Delite", location: "North side of town", garden_type: "Vegetables")
flower_garden = Garden.create(name: "Flower Delite", location: "South side of town", garden_type: "Flowers")

# add some associations


meg.gardens << veggie_garden
kate.gardens << veggie_garden
connie.gardens << flower_garden
connie.gardens << veggie_garden
