require 'rest-client'
require 'json'
require 'pry'

def get_character_movies_from_api(character_name)

  all_characters = RestClient.get('http://www.swapi.co/api/people/')
  response_hash = JSON.parse(all_characters.body)
  list_of_films = []

  response_hash["results"].each do |character|
     character["films"].each do |film|
       if character["name"].downcase == character_name
         list_of_films << JSON.parse(RestClient.get(film))
       end
     end
   end
  list_of_films
end


  # iterate over the response haexitsh to find the collection of `films` for the given
  #   `character`
  # collect those film API urls, make a web request to each URL to get the info
  #  for that film
  # return value of this method should be collection of info about each film.
  #  i.e. an array of hashes in which each hash reps a given film
  # this collection will be the argument given to `print_movies`
  #  and that method will do some nice presentation stuff like puts out a list
  #  of movies by title. Have a play around with the puts with other info about a given film.


  def print_movies(films)
    films.each do |film|
      puts film["title"]
    end
  end



def show_character_movies(character_name)
  films = get_character_movies_from_api(character_name)
  print_movies(films)
end

## BONUS

# that `get_character_movies_from_api` method is probably pretty long. Does it do more than one job?
# can you split it up into helper methods?
