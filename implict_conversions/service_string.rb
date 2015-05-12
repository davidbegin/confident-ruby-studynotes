class ServiceString
  def initialize(name)
    @name = name
  end

  def url
    "www.#{name.gsub(/\s+/, "").gsub(/\.$/, "")}.com"
  end

  private

  def to_str
    url
  end

  attr_reader :name
end

email_service = ServiceString.new("lemur mailing")
database_service = ServiceString.new("datafacts inc.")
error_service = ServiceString.new("bug_catcher.io")

puts "services:" + email_service + ":" + database_service + ":" + error_service


__END_

This is an example of a souped up string, that still knows how to blend
in with its old friends._
