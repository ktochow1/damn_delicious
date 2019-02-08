class Scraper

  def self.scrape_categories(url)
    website = Nokogiri::HTML(open(url))
    section = website.css("div.itemized")
    section.css("div #post-28457")

#     pry(Scraper)> section.css("div #post-28457")[0].text
# => "\n\n\nBeef short ribs soup\n\nGalbitang\t\n갈비탕 "
    #^gives me an empty array
    binding.pry

  end


end
