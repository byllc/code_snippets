# Author: Byllc
# Selection of techniques for dealing with Hashes in ruby

# Convert a Hash to a Struct
hash = {:one => "one",:two => "two", :three => "three"}
Struct.new(*hash.keys).new(*hash.values)  

# A ruby hash can accept a block that will called when you encouter a 'miss'
Hash.new{ |hash,key|  "There was no value found for key #{key}" }

# Another example where we initialize any miss with 0
Hash.new{ |hash,key|  hash[key] = 0 }

#reverse merge (keep values in original hash instead of overwriting)
hash.reverse_merge(hash2)

