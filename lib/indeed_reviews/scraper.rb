class Scraper

  def self.scrape_jobs(url)
    homepage = Nokogiri::HTML(open(url))
    job_container = homepage.css("div.cmp-SearchResultContainer div.cmp-CompanyListWidget")#[0]
    job_strip_array = job_container.css(".clearfix.cmp-CompanyWidget")
    # review_link = job_strip_array.css("div.cmp-CompanyWidget-links")[0].children[0].attributes["href"].value # job_container.css("a")[0].attributes["href"].value
    #
     job_strip_array.each.with_index(1) do |job_row, index|
        job_name = job_row.css(".cmp-CompanyWidget-details a.cmp-CompanyWidget-name").text
        job_url = job_row.css(".cmp-CompanyWidget-links a")[0].attributes["href"].value
        puts "#{index}. #{JobReviews.new(job_name, job_url).name}"
        end
    end

      def self.scrape_reviews(job) #passing job as arg to add more attributes to job objects
        rev_homepage = Nokogiri::HTML(open(job.url))
        # binding.pry
        reviews_arr = rev_homepage.css(".cmp-review-description .cmp-review-text")

        reviews_arr.each.with_index(1) do |review, index|
          puts "\n#{index}. #{review.text}"
        end
      end


end
