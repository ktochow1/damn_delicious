class Scraper

  def self.scrape_cities(url)
    homepage = Nokogiri::HTML(open(url))
    job_container = homepage.css("div.cmp-SearchResultContainer div.cmp-CompanyListWidget")[0]
    review_link = job_container.css("a")[0].attributes["href"].value
    job_strip_array = job_container.css(".clearfix")

    job_strip_array.map do |strip|
      City.new(strip.css("div.cmp-CompanyWidget-details a")[0].children[0].text, strip.css("div.cmp-CompanyWidget-links")[0].children[0].attributes["href"].value)
    end
      # binding.pry
    # job_strip = homepage.css("div.cmp-SearchResultContainer div.cmp-CompanyListWidget div.clearfix.cmp-CompanyWidget div.cmp-CompanyWidget-links")[0]
      #container of all job strips

      # review_link = job_strip.css("a")[0].attributes["href"].value
        #code for extracting url of job review from strip

        # job_container.css(".clearfix")
          #this holds array of job stips!!!


# job_strip_array[0].css("div.cmp-CompanyWidget-details a")[0].children[0].text


#first index is the one to change

    # sections = homepage.css("div.cmp-discovery-main") #1 item in array
    # pop_city_comp = ("div.cmp-FooterContainer div.icl-Grid div.div.cmp-LinksWidget") #.icl-Grid-col.icl-u-xs-span4

    # top_rated_companies = sections.css("div.cmp-discovery-main div.cmp-FrontDoorWidget")
    # binding.pry
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
