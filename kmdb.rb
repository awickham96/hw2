# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
Studio.destroy_all
Movie.destroy_all
Actor.destroy_all
Role.destroy_all

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.

# for Studios table

new_studio = Studio.new
new_studio["name"] = "Warner Bros."
new_studio.save

# puts "There are #{Studio.all.count} studios"

# for Movies table:

WarnerBros = Studio.find_by({"name"=> "Warner Bros."})

new_movie= Movie.new
new_movie["title"] = "Batman Begins"
new_movie["year_released"] = "2005"
new_movie["rating"] = "PG-13"
new_movie["studio_id"] = WarnerBros["id"]
new_movie.save

new_movie= Movie.new
new_movie["title"] = "The Dark Knight"
new_movie["year_released"] = "2008"
new_movie["rating"] = "PG-13"
new_movie["studio_id"] = WarnerBros["id"]
new_movie.save

new_movie= Movie.new
new_movie["title"] = "The Dark Knight Rises"
new_movie["year_released"] = "2012"
new_movie["rating"] = "PG-13"
new_movie["studio_id"] = WarnerBros["id"]
new_movie.save

# puts "There are #{Movie.all.count} movies"

# for Actor table:

new_actor = Actor.new
new_actor["name"] = "Christian Bale"
new_actor.save

new_actor = Actor.new
new_actor["name"] = "Michael Caine"
new_actor.save

new_actor = Actor.new
new_actor["name"] = "Liam Neeson"
new_actor.save

new_actor = Actor.new
new_actor["name"] = "Katie Holmes"
new_actor.save

new_actor = Actor.new
new_actor["name"] = "Gary Oldman"
new_actor.save

new_actor = Actor.new
new_actor["name"] = "Heath Ledger"
new_actor.save

new_actor = Actor.new
new_actor["name"] = "Aaron Eckhart"
new_actor.save

new_actor = Actor.new
new_actor["name"] = "Maggie Gyllenhaal"
new_actor.save

new_actor = Actor.new
new_actor["name"] = "Tom Hardy"
new_actor.save

new_actor = Actor.new
new_actor["name"] = "Joseph Gordon-Levitt"
new_actor.save

new_actor = Actor.new
new_actor["name"] = "Anne Hathaway"
new_actor.save

# puts "There are #{Actor.all.count} actors"

# for Role table

batmanBegins = Movie.find_by ({"title" => "Batman Begins"})
cBale = Actor.find_by ({"name" => "Christian Bale"})
role = Role.new
role["character_name"] = "Bruce Wayne"
role["movie_id"] = batmanBegins["id"]
role["actor_id"] = cBale["id"]
role.save

batmanBegins = Movie.find_by ({"title" => "Batman Begins"})
mCaine = Actor.find_by ({"name" => "Michael Caine"})
role = Role.new
role["character_name"] = "Alfred"
role["movie_id"] = batmanBegins["id"]
role["actor_id"] = mCaine["id"]
role.save

batmanBegins = Movie.find_by ({"title" => "Batman Begins"})
lNeeson = Actor.find_by ({"name" => "Liam Neeson"})
role = Role.new
role["character_name"] = "Ra's Al Ghul"
role["movie_id"] = batmanBegins["id"]
role["actor_id"] = lNeeson["id"]
role.save

batmanBegins = Movie.find_by ({"title" => "Batman Begins"})
kHolmes = Actor.find_by ({"name" => "Katie Holmes"})
role = Role.new
role["character_name"] = "Rachel Dawes"
role["movie_id"] = batmanBegins["id"]
role["actor_id"] = kHolmes["id"]
role.save

batmanBegins = Movie.find_by ({"title" => "Batman Begins"})
gOldman = Actor.find_by ({"name" => "Gary Oldman"})
role = Role.new
role["character_name"] = "Commissioner Gordon"
role["movie_id"] = batmanBegins["id"]
role["actor_id"] = gOldman["id"]
role.save

darkKnight = Movie.find_by ({"title" => "The Dark Knight"})
cBale = Actor.find_by ({"name" => "Christian Bale"})
role = Role.new
role["character_name"] = "Bruce Wayne"
role["movie_id"] = darkKnight["id"]
role["actor_id"] = cBale["id"]
role.save

darkKnight = Movie.find_by ({"title" => "The Dark Knight"})
hLedger = Actor.find_by ({"name" => "Heath Ledger"})
role = Role.new
role["character_name"] = "Joker"
role["movie_id"] = darkKnight["id"]
role["actor_id"] = hLedger["id"]
role.save

darkKnight = Movie.find_by ({"title" => "The Dark Knight"})
aEckhart = Actor.find_by ({"name" => "Aaron Eckhart"})
role = Role.new
role["character_name"] = "Harvey Dent"
role["movie_id"] = darkKnight["id"]
role["actor_id"] = aEckhart["id"]
role.save

darkKnight = Movie.find_by ({"title" => "The Dark Knight"})
mCaine = Actor.find_by ({"name" => "Michael Caine"})
role = Role.new
role["character_name"] = "Alfred"
role["movie_id"] = darkKnight["id"]
role["actor_id"] = mCaine["id"]
role.save

darkKnight = Movie.find_by ({"title" => "The Dark Knight"})
mGyllenhaal = Actor.find_by ({"name" => "Maggie Gyllenhaal"})
role = Role.new
role["character_name"] = "Rachel Dawes"
role["movie_id"] = darkKnight["id"]
role["actor_id"] = mGyllenhaal["id"]
role.save

darkKnightRises = Movie.find_by ({"title" => "The Dark Knight Rises"})
cBale = Actor.find_by ({"name" => "Christian Bale"})
role = Role.new
role["character_name"] = "Bruce Wayne"
role["movie_id"] = darkKnightRises["id"]
role["actor_id"] = cBale["id"]
role.save

darkKnightRises = Movie.find_by ({"title" => "The Dark Knight Rises"})
gOldman = Actor.find_by ({"name" => "Gary Oldman"})
role = Role.new
role["character_name"] = "Commissioner Gordon"
role["movie_id"] = darkKnightRises["id"]
role["actor_id"] = gOldman["id"]
role.save

darkKnightRises = Movie.find_by ({"title" => "The Dark Knight Rises"})
tHardy = Actor.find_by ({"name" => "Tom Hardy"})
role = Role.new
role["character_name"] = "Bane"
role["movie_id"] = darkKnightRises["id"]
role["actor_id"] = tHardy["id"]
role.save

darkKnightRises = Movie.find_by ({"title" => "The Dark Knight Rises"})
jGordonLevitt = Actor.find_by ({"name" => "Joseph Gordon-Levitt"})
role = Role.new
role["character_name"] = "John Blake"
role["movie_id"] = darkKnightRises["id"]
role["actor_id"] = jGordonLevitt["id"]
role.save

darkKnightRises = Movie.find_by ({"title" => "The Dark Knight Rises"})
aHathaway = Actor.find_by ({"name" => "Anne Hathaway"})
role = Role.new
role["character_name"] = "Selina Kyle"
role["movie_id"] = darkKnightRises["id"]
role["actor_id"] = aHathaway["id"]
role.save

# puts "There are #{Role.all.count} roles"

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.

for movie in Movie.all
    studio_name = Studio.find(movie.studio_id).name
    puts "#{movie.title} #{movie.year_released} #{movie.rating} #{studio_name}"
  end
  

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the movies data and loop through the results to display the Top Cast output.

for role in Role.all
    movie_title = Movie.find(role.movie_id).title
    actor_name = Actor.find(role.actor_id).name
    character_name = role.character_name
    puts "#{movie_title} #{actor_name} #{character_name}"
  end