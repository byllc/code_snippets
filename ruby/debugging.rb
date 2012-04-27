#using tap for debugging in 1.9+ you can 'tap in to' chained methods but still return the caller as to not effect the rest of the chain
#the code below will return the sorted version of the array but big_numbers will be populated with numbers greatr than 1000
#this can be useful if we want to inspect an item at certain points in the chain without effecting the chain
big_numbers = []
[1,2,4,5000].tap{|x| big_numbers << x.select{|y| y > 1000}  }.sort

