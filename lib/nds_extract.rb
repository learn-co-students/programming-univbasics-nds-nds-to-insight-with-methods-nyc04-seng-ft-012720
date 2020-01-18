$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  pp director_data
  director_total = 0
  gross_len = director_data[:movies].length
  gross_index = 0
  while gross_index < gross_len do
    director_total += director_data[:movies][gross_index][:worldwide_gross]
    gross_index += 1
  end
  director_total
end
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  director_index = 0
  while director_index < nds.length do
    director_name = nds[director_index][:name]
    result[director_name] = 0
    result[director_name] += gross_for_director(nds[director_index])
    director_index += 1
  end
  result
end


#
#grand_total = 0
#row_index = 0
#while row_index < vm.length do
#  column_index = 0
#  while column_index < vm[row_index].length do
#    grand_total += total_value_of_spinner(vm, row_index, column_index)
#    column_index += 1
#  end
#  row_index += 1
#end
