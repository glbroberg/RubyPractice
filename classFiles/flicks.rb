## *** Variable and String Output Section
# movie = 'Goonies'
# rank = 10

## 'puts()' - prints string - auto calls .to_s on any input

# # Single Quotes - simple strings
# puts 'Mikey loves Goonies'
# puts 'Mikey\'s fave movie is Goonies'
# puts movie + ' is ranked ' + rank.to_s


# # Double Quotes - more complex strings
# puts "Mikey loves Goonies"
# puts "Mikey's fave movie is #{movie}" #only use this with double quotes, no escaping single quotes
# puts "#{movie} is ranked #{rank*2}" # auto "to string" as in c#, can perfor operations inside of curly brackets

# puts self
# puts self.class

## *** METHOD SECTION
# def movie_listing
#   puts "Movie: Goonies"
# end

# def movie_listing_with_string_return
#   "Movie: Goonies"
# end

# def movie_listing_with_param(movie_title, movie_rank=movie_title.length)
#   puts("Movie: #{movie_title} has a rank of #{movie_rank} as of #{weekday}")
# end

# def weekday
#   Time.new.strftime("%A")
# end

# movie_listing
# puts movie_listing_with_string_return
# movie_listing_with_param('Goonies', 1)

# a_title = "Goldfinger!!!!!!" 
# movie_listing_with_param(a_title)


## *** CLASS SECTION
class Movie

  # Ruby Constructor => 'initialize' method -> called with ClassName.new(param1, param2...)
  def initialize(name, rank)
    @title = name
    @ranking = rank
  end

  def listing
    "Movie: #{@title} \nRank: #{@ranking}"
  end  

  # Override 'to_s' method
  def to_s
    "Overrides normal 'to_s' method"
    "Movie: #{@title} \nRank: #{@ranking}"
  end

  def thumbs_up
    @ranking += 1
  end

  def thumbs_down
    @ranking -= 1
  end


end

movie1 = Movie.new("Fight Club", 10) # Instantiate method, pass initial parameters
#puts movie1 # 'puts' auto calls .to_s on any input, must override '.to_s' in 'Movie' class

## *** ARRAY SECTION
movie2 = Movie.new("Spiderman", 9)
movie3 = Movie.new("Star Wars", 8)

movies = [movie1, movie2, movie3]

movies.each do |movie|
  movie.thumbs_up
  movie.thumbs_down
  movie.thumbs_down
end

puts movies