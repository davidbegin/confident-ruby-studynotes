def calculate_distance(start, endpoint)
  if start.respond_to?(:to_coords)
    start = start.to_coords
  end

  if endpoint.respond_to?(:to_coords)
    endpoint = endpoint.to_coords
  end

  x_difference = endpoint[0] - start[0]
  y_difference = endpoint[1] - start[1]
  [x_difference, y_difference]
end

class Point
  def initialize(x, y)
    @x, @y= x, y
  end

  def to_coords
    [@x, @y]
  end
end

require "minitest/autorun"

describe Point do
  it "is real" do
    Point.new(1, 2)
  end
end

describe "#calculate_distance" do
  it "returns the distance between the points" do
    start = [1, 2]
    endpoint = [10, 10]
    assert_equal calculate_distance(start, endpoint), [9, 8]
  end

  it "returns the distance for Point classes" do
    start = Point.new(1, 2)
    endpoint = Point.new(10, 10)
    assert_equal calculate_distance(start, endpoint), [9, 8]
  end
end
