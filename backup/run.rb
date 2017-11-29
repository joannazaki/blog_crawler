require './crawler.rb'
require './blog_entry.rb'
require './html_pages.html'


crawler = Crawler.new
crawler.crawl


my_blog = BlogEntry.new
my_blog.tags = "Wellness"
my_blog.shares = "1 million shares"

puts my_blog.tags
puts my_blog.shares
