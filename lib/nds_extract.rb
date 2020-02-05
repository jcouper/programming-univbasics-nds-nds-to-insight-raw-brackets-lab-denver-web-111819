$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  
counter = 0 
final_hash = {}
director_key_holder = " "



while nds.length > counter do 
  number_of_movies = 0 
  director_key_holder = nds[counter][:name]
  total_revenue = 0 
  while nds[counter][:movies].length > number_of_movies do 
    total_revenue += nds[counter][:movies][number_of_movies][:worldwide_gorss]
    number_of_movies += 1
  end
final_hash[director_key_holder] = total_revenue
counter += 1


end
puts final_hash

end
  
 


  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
   # result = {}

  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!

