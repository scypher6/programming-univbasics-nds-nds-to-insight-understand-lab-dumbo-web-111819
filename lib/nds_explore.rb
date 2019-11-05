$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
# Call the method directors_database to retrieve the NDS

def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  pp nds
end

def print_first_directors_movie_titles
  pretty_print_nds(directors_database)
  db = []
  db = directors_database
  array =[]
  array.push( db[0][:movies].map { |s| s[:title]} )
  array = array.flatten
  array.length.times { |index| puts array[index]}
end
