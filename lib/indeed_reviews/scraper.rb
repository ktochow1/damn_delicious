class Scraper

  def self.scrape_jobs(url)
    homepage = Nokogiri::HTML(open(url))
    job_container = homepage.css("div.cmp-SearchResultContainer div.cmp-CompanyListWidget")#[0]
    job_strip_array = job_container.css(".clearfix.cmp-CompanyWidget")

     job_strip_array.each do |job_row|
        job_name = job_row.css(".cmp-CompanyWidget-details a.cmp-CompanyWidget-name").text
        job_url = job_row.css(".cmp-CompanyWidget-links a")[0].attributes["href"].value
        JobReviews.new(job_name, job_url)
        end
        JobReviews.list_jobs
  end

      def self.scrape_reviews(job)
        rev_homepage = Nokogiri::HTML(open(job.url))
        reviews_arr = rev_homepage.css(".cmp-review-description .cmp-review-text")
        reviews_arr.each.with_index(1) do |review, index|
          puts "\n#{index}. #{review.text}"
        end
      end

end
