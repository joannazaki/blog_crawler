class Crawler
	def crawl
	entry = BlogEntry.new
	entry.author = "Joanna"
	entry.title = "My 1st Blog!"

	display_name = "#{entry.title} By: #{entry.author}"
	puts display_name
	end
end

