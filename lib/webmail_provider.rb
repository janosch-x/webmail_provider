require 'csv'
require 'uri'

class WebmailProvider
  attr_reader :name, :url

  def initialize(name, url)
    @name = name
    @url  = URI("https://#{url}")
  end

  def self.for(email_address)
    domain = email_address && email_address.split('@').last.strip
    list[domain]
  end

  def self.list
    @list ||= CSV.foreach(File.join(__dir__, 'providers.csv'))
                 .each_with_object({}) do |(domain, *attributes), hash|
                   hash[domain] = new(*attributes)
                 end
  end
end
