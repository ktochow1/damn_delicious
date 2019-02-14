class Scraper

  def self.scrape_cities(url)
    homepage = Nokogiri::HTML(open(url))
    job_container = homepage.css("div.cmp-SearchResultContainer div.cmp-CompanyListWidget")[0]

    # sections = homepage.css("div.cmp-discovery-main") #1 item in array
    # pop_city_comp = ("div.cmp-FooterContainer div.icl-Grid div.div.cmp-LinksWidget") #.icl-Grid-col.icl-u-xs-span4

    # top_rated_companies = sections.css("div.cmp-discovery-main div.cmp-FrontDoorWidget")
    binding.pry
# popular_companies = sections.css("div.cmp-discovery-main div.cmp-FrontDoorWidget")
    # popular_companies("div.cmp-discovery-main div.cmp-FrontDoorWidget div.cmp-PopularCompaniesWidget-companyDetailWrapper")

#.attribute["href"].value
  end


    # def list_categories
    #   JobCategories.all.each_with_index(1) do |title, index|
    #     puts "#{index}. #{title.name}"
    #   end
    # end
    #
    # section = website.css("div.cmp-FrontDoorWidget div.cmp-FrontDoorWidget-title")
    # sections_array = website.css("div.cmp-discovery-main.cmp-discovery-curated.clearfix div.cmp-FrontDoorWidget-title")#has two elements
    # popular_jobs = sections_array(".cmp-PopularCompaniesWidget")
    # binding.pry

    # sections_array = website.css("div.cmp-discovery-main.cmp-discovery-curated.clearfix div.cmp-FrontDoorWidget-title")#has two elements
    # popular_jobs = website.css(".cmp-PopularCompaniesWidget.cmp-PopularCompaniesWidget-companyDetailWrapper.cmp-PopularCompaniesWidget-companyName.a")
    # binding.pry
    # sections_array.map do |section|
    #
    #   JobCategories.new(sesction.text)
    # end



end
