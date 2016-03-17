# Q0: Why is this error being thrown?

  A: We do not have a Pokemon model yet.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *

  A: Through "@pokemon = trainerless_pokemon.sample", they all have no trainer.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.

  A: When you press the button, it leads you to the capture_path along side with the id of pokemon. The capture_path will call the capture function in Pokemon controller and pass in the id.

# Question 3: What would you name your own Pokemon?

  A: Provilone

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?

  A: I passed in a path. And it takes id as argument. So that it matches the route.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.

  A: If there is any error, the Model will record accordingly and save into "errors".
     Through flash, we could cache the error message and show it on the view upon the next request.

# Give us feedback on the project and decal below!

  I don't actually want a new repo for this project. Because I'd like to keep github clean.
# Extra credit: Link your Heroku deployed app

  https://powerful-refuge-68401.herokuapp.com/