def calculate_distance(start, endpoint)
  [endpoint[0] - start[0], endpoint[1] - start[1]]
end

require "minitest/autorun"

describe "#calculate_distance" do
  it "returns the endpoint, if the start is [0, 0]" do
    start = [0, 0]
    endpoint = [10, 10]
    assert_equal calculate_distance(start, endpoint), [10, 10]
  end
end
