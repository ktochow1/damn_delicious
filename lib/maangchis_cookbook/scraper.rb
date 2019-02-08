class Scraper

  def self.scrape_categories(url)
    website = Nokogiri::HTML(open(url))
    section = website.css("div.itemized")
    section.css("div a.attachment-thumbnail.size-thumbnail.wp-post-image").text
    #^gives me an empty array
    binding.pry

  end


end
