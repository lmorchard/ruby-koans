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
  sides = [a, b, c]

  # https://stackoverflow.com/a/11361502
  raise TriangleError if sides.min <= 0

  # my original answer
  #sides.each do |item|
  #  if item <= 0
  #    raise TriangleError
  #  end
  #end

  # https://stackoverflow.com/a/11361502
  x, y, z = sides.sort
  raise TriangleError if x + y <= z

  # my original answer
  #if a + b <= c or b + c <= a or c + a <= b
  #  raise TriangleError
  #end

  # https://stackoverflow.com/questions/4742692/a-more-elegant-solution-to-ruby-koans-triangle-rb
  case sides.uniq.size
  when 1 then :equilateral
  when 2 then :isosceles
  else        :scalene
  end

  # my original answer
  #if a == b and b == c
  #  :equilateral
  #elsif a == b or b == c or c == a
  #  :isosceles
  #else
  #  :scalene
  #end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
