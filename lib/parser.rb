require 'nokogiri'
require 'open-uri'

class Parser
  def get_title(url)
    doc = Nokogiri::HTML(open(url))
    doc.css('title').text
  end
end

p1 = Parser.new

puts p1.get_title("http://animespirit.ru")