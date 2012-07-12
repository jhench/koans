# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
     array=Array.new
     array=[a,b,c]
     array=array.sort
# Test for invalid Triangles
     if (array[0]+array[1]<=array[2]) || (array[0]<=0)
       raise TriangleError, "Invalid Triangle"
     end

     unique=array.uniq.size
     if unique == 3
	 :scalene
       elsif unique == 2
	 :isosceles
       else
         :equilateral
     end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
