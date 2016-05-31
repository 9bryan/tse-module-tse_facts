# public_ip.rb
require 'open-uri'
require 'nokogiri'

Facter.add('public_ip') do
  setcode do
    page = Nokogiri::HTML(open("http://www.ipchicken.com/"))
    page.xpath("/html/body/table[2]/tr/td[3]/p[2]/font/b/text()").to_s.strip
  end
end
