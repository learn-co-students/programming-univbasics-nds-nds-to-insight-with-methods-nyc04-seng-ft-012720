def directors_totals(nds)
  result = {}
  
  director_index = 0
  while director_index < nds.length do
    current_director = nds[director_index][:name]
    result[current_director] = gross_for_director( nds[director_index] )
    director_index += 1
  end
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
  movie_index = 0
  movies = director_data[:movies]
  total_gross_for_director = 0
  
  while movie_index < movies.length do
    total_gross_for_director += movies[movie_index][:worldwide_gross]
    movie_index += 1
  end
  total_gross_for_director
end