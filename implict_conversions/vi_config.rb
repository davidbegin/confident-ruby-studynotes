class VimConfigFile
  def initialize
    @filename = "#{ENV['HOME']}/.vimrc"
  end

  private

  attr_reader :filename

  alias_method :to_str, :filename
  alias_method :to_path, :filename
end

vim_config = VimConfigFile.new
output = File.open(vim_config).count
puts output

# Do not try this at home!
#
# ..or wait do try this at home,
# Do not try this at work1
class Time; alias_method :to_str, :to_s; end
puts "hello" + Time.now

__END__

to_str or to_path works to following example

also it doesn't matter if the implicit conversion is private

The concept of why there is no implicit conversion of
Time to string.
From my understanding, a time can be represented in some many
different string formats, that defining an explicit conversion
could be potential confusing.
