#!/usr/bin/ruby

require 'rubygems'
#require 'mechanize'
#require 'hpricot'
require 'twitter'

# TODO
# search with specific hash and have HTTP on twit's text => [URL]
# turn all URLs into supported photo service URLs => [URL]
# go to supported photo service URL and grab the image's URL => [URL]

class Hashmage
    def search hash
       t = Twitter::Search.new
       t.hashed hash
       #links = t.select { |tweet| tweet.text =~ /tweetphoto/ }
       links = t
       links.each { |link|
         puts link.text
       }
    end
end

h = Hashmage.new
puts h.search 'agilebrazil'


