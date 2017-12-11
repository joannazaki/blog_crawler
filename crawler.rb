require 'mechanize'
require 'byebug'
require 'active_support'
require 'active_support/core_ext'
require './blog_post.rb'
require './lib/mechanize_adapter.rb'

class Crawler
  def crawl(blog_url)
    agent = Mechanize.new
    agent.agent.http.verify_mode = OpenSSL::SSL::VERIFY_NONE
	blog_page = agent.get(blog_url)

   		puts blog_page.extract('h2')
   		#puts blog_page.extract_all('section.b-post h2 a')
   		puts blog_page.extract('p.post__author a')
   		puts blog_page.extract('p.post__author time')
   	end
end


