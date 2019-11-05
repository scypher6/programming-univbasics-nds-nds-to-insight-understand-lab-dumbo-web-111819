$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
# Call the method directors_database to retrieve the NDS

def pretty_print_nds(nds)
  # Change the code below to pretty print the nds with pp
  pp nds
end

def print_first_directors_movie_titles
  #pretty_print_nds(directors_database)           #prints the db of directors and filmography
  db = []                 #for directors_database
  db = directors_database
  db[0][:movies].each { |s| puts s[:title]}
  
end
