#Write to a file atomically. 
#Useful for situations where you don‘t want other processes or threads to see half-written files.
File.atomic_write("important.file") do |file|
  file.write("hello")
end