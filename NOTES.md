1. I need users
  URLS
    get /signup #=> see a form
    post /users #=> create the user
  database
    need a users table to store their email and password

## after you migrate, always rake console and create a new instance to test

2. give users passwords
3. i need to find a user with their passwords
4. change my login system to use their email and password to Authentication


## avoid complexity - do the parts piecemeal
1. create objects
2. call methods
3. create variables
---

1. build user reg process - signup form
2. give posts to users
3. only let them edit posts they made
----

render vs redirect
add validation:   validates :email, :presence => true

  - validation make sure user has data
  u = User.new
  u.save
  u.errors.full_messages
  returns ["password can't be blank", "username can't be blank"]
