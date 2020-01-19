$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total = 0
  moviecounter = 0
  while moviecounter < director_data[:movies].length do
    total = total + director_data[:movies][moviecounter][:worldwide_gross]
    moviecounter += 1
  end
  total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  totals = {}
  directorcounter = 0
  while directorcounter < nds.length do
      totals[nds[directorcounter][:name]] = gross_for_director(nds[directorcounter])
    directorcounter += 1
  end
  p totals
end
