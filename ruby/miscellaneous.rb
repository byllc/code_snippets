#Adding [] operators to any class to have custom array like behaviour can be useful
#especially if that class encapsulates some data storage structure
def []=(thing)
  #do something with thing to return  
end

#Use at the bottom of a file to test and run items specifically from that file 
if __FILE__ == $0
  #some code related to this file that will only run when this file is where the program run originates
end

#block Comments
=begin
 I'ts surprising how many people have neever seen or used block comments in ruby. Some people find them ugly
 But they are certainly more readable than a wall of pound signs
=end

