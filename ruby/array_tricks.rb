#Using mass assignment for exploding method parameters
ary = [1,3,2,4,5]
def do_something(*ary)
  a, b, c, d, e = array
end


#allow both single items and full arrays to be iterated over
[item].flatten.each { |item| }
#or more cleanly, where splat will work on an array or a single item
[*item].each { |item| }