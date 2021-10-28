## *** Variable and String Output Section
# movie = 'Goonies'
# rank = 10

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

## *** Method Section
def movie_listing
  puts "Movie: Goonies"
end

def movie_listing_with_string_return
  "Movie: Goonies"
end

def movie_listing_with_param(movie_title, movie_rank=movie_title.length)
  puts("Movie: #{movie_title} has a rank of #{movie_rank} as of #{weekday}")
end

def weekday
  Time.new.strftime("%A")
end

movie_listing
puts movie_listing_with_string_return
movie_listing_with_param('Goonies', 1)

a_title = "Goldfinger!!!!!!" 
movie_listing_with_param(a_title)