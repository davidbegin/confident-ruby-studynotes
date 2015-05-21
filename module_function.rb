# What is the real advantage of module_function
#
# why use if over self << class
#
# or extending a module

module Toolbox1
  def self.stuff1
    "stuff1"
  end
end

module Toolbox2
  module_function

  def stuff2
    "stuff2"
  end
end

module Toolbox3
  def stuff3
    "stuff3"
  end
end

p Toolbox1.stuff1
p Toolbox2.stuff2

extend Toolbox3
p stuff3
