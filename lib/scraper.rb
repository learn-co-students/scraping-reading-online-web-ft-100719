require 'nokogiri'
require 'open-uri'
require 'pry'

html = open("https://flatironschool.com/")
doc = Nokogiri::HTML(open("https://flatironschool.com/"))
doc.css(".headline-26OIBN").text

puts doc.css(".headline-26OIBN")