$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  
  counter = 0 
  final_hash = {}
  key_holder = " "
  
  while nds.length > counter do 
    num_mov_counter = 0 
    key_holder = nds[counter][:name]
    rev_var = 0 
       while nds[counter][:movies].length > num_mov_counter do

        rev_var += nds[counter][:movies][num_mov_counter][:worldwide_gross]

        num_mov_counter += 1
       end
    final_hash[key_holder]= rev_var
    counter += 1 
  
  end
  final_hash

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

