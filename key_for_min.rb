# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  #reverse keys and values to a new hash
new_hash = {}
name_hash.each do |k,v|
  new_hash[v] = k
end 

#loop process to eliminate largest values leaving min behind in hash
i = 0 
while i < new_hash.length do 
largest = new_hash.max

largest = largest.select do |x|
  x.is_a? Integer
end 

largest = largest[0]

new_hash.delete(largest)
i+=1
end 

#change hash to array for easy access
min_array = new_hash.to_a.flatten

#return "key" of min value
min_array[1]
    
end