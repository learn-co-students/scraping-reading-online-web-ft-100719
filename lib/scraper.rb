require 'nokogiri'
require 'open-uri'
require 'pry'

html = open("https://flatironschool.com/")

doc = Nokogiri::HTML(open("https://flatironschool.com/"))
doc.css(".headline-260IBN").text.strip
courses = doc.css("#2a778efd-1685-5ec6-9e5a-0843d6a88b7b .inlineMobileLeft-2Yo002.imageTextBlockGrid3-2XAK6G")[0].name
puts doc.css(".headline-260IBN")
courses.each do |course|
  puts course.text.strip
end
