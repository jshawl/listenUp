# listenup
Search for audiobooks based on narrator characteristics


To use this app:
Fork and clone the repo
bundle install
rake db:create
rake db: migrate
rake db: seed
rails s

There are a few audiobooks and narrators seeded into the app.  Search for narrators using the radio buttons to make selections on the homepage.  If you know of other narrators, create a login and you can store new narrators in your database.  Currently, the create new audiobooks function doesn't work because I need to implement an admin user who would moderate additions to the database.  [The create form loads, but generates an error when the user clicks submit because I did not pull the narrators (for the drop down menu) from the table which would give them an id by which they would be saved in the audiobooks table.  Instead, I hard-coded in the seeded narrators as options, so that the form could render without being submitable]
