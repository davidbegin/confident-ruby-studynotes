winners = [
  "Kent Beck",
  "DHH",
  "Matz",
  "Linus",
  "Uncle Bob"
]

Place = Struct.new(:index, :name, :prize) do
  def to_int
    index
  end
end

first = Place.new(0, "first", "all the money in the world")
second = Place.new(1, "second", "unlimited candy supply")
third = Place.new(2, "third", "gift card to Powells")

[first, second, third].each do |place|
  puts "#{winners[place]} wins #{place.name}"
  puts "Winning: #{place.prize}\n"
end
