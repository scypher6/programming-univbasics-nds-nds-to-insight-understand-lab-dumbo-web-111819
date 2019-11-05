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
  db = []                 #for directors_database
  db = directors_database
  titles =[]                                            #to collect the titles
  titles.push( db[0][:movies].map { |s| s[:title]} )    #map returns an array
  titles = titles.flatten                               #reduce AoA to single array
  movies = ""                 #store movies list here
  titles.length.times { |index| movies += " #{titles[index]}\n"}
  movies
end
