class Scraper

  def self.scrape_categories(url)
    website = Nokogiri::HTML(open(url))
    section = website.css("div.itemized")
    section.css("div #post-28457")[0].text.gsub('\n','')
    section.css("div.p.post.publish.category-recipe")[0].css("h3 a").text
    section.css("div.p1.post.publish.category-recipe")[0].css("h3 a").text
    section.css("div.p2.post.publish.category-recipe")[0].css("h3 a").text
    section.css("div").text
    section.css("div")[0].css("h3 a").text.gsub(/[\n\t]/, "")
    section.css("#main").css(".post")[0] #href, title
    section.css("#main").css(".post")[1].css("a")[0].attr("title")


    #     pry(Scraper)> section.css("div #post-28457")[0].text
# => "\n\n\nBeef short ribs soup\n\nGalbitang\t\n갈비탕 "
    #^gives me an empty array
    binding.pry

  end


end
