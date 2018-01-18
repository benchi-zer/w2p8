require 'rubygems'
require 'nokogiri'
require 'open-uri'

def get_town_url
  page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
  page.css('table.Style20 a') .each do |node|
  node['href'] = node['href'][1..-1]
  town_url = "http://annuaire-des-mairies.com" + node['href']
  end
end


# def get_town_email
#  page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/eaubonne.html"))
#  page.css('.style27 p.Style22') .each do |node|
#   if node.text.include?"@"
#     puts node.text
#   end
#  end
# end
# puts get_town_email
end
puts get_town_url
