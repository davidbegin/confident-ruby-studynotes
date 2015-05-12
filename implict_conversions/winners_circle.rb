class WinnerCircle
  def initialize(winners)
    @winners = winners
  end

  def annoucement
    [first, second, third].each do |place|
      puts "#{winners[place]} wins #{place.name}"
      puts "Winning: #{place.prize}\n"
    end
  end

  private

  attr_reader :winners

  def first
    @first ||= Place.new(
      0, "first", "all the money in the world"
    )
  end

  def second
    @second ||= Place.new(
      1, "second", "unlimited candy supply"
    )
  end

  def third
    @third ||= Place.new(
      2, "third", "gift card to Powells"
    )
  end

  Place = Struct.new(:index, :name, :prize) do
    def to_int
      index
    end
  end

end

winners = [
  "Kent Beck",
  "DHH",
  "Matz",
  "Linus",
  "Uncle Bob"
]

WinnerCircle.new(winners).annoucement

__END__

Often times when coding, I am looking to create code
that is unsuprising.
  And I feel like defining and relying on implicit conversions,
  could be confusing the someone new to a code base.

  At the same time, it makes sense, to see if the objects we
have can play the roles we need, and if they only need a simple
implicit conversion definined, then thats a big win.



