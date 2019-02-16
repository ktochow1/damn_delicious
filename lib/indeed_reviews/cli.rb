#CLI controller

class CLI


  def start
    puts "Welcome, let's explore some job reviews around the country!"
    puts "We'll be looking in New York City, Los Angeles, Chicago, and Boston!"
    menu
  end

    def menu
      puts "Please enter the city you wish to explore reviews."
      input = gets.strip.downcase
       case input
         when "new york city"
             puts "In New York City"
             scrape_nyc
             puts "\nPlease select the number which corresponds with the job you'd like you read reviews for."
           when "la"
             puts "In Los Angeles"
             scrape_la
             puts "\nPlease select the number which corresponds with the job you'd like you read reviews for."
           when "chicago"
             puts "In Chicago"
             scrape_chicago
             puts "\nPlease select the number which corresponds with the job you'd like you read reviews for."
           when "boston"
             puts "In Boston"
             scrape_boston
             puts "\nPlease select the number which corresponds with the job you'd like you read reviews for."
           when "exit"
             puts "Goodbye! Hope to see you soon!"
          else
            puts "Hmm, I'm not sure what you meant. Try again or type 'exit'."
            menu
        end
      end

    def scrape_nyc
      url = "https://www.indeed.com/cmp?l=New+York%2C+NY"
      job_cities = Scraper.scrape_jobs(url)
      # puts  job_cities[0]
      # binding.pry
    end

    def scrape_boston
      url = "https://www.indeed.com/cmp?l=Boston%2C+MA"
      job_cities = Scraper.scrape_jobs(url)
      # binding.pry
    end

    def scrape_la
      url = "https://www.indeed.com/cmp?l=Los+Angeles%2C+CA"
      job_cities = Scraper.scrape_jobs(url)
    end

    def scrape_chicago
      url = "https://www.indeed.com/cmp?l=Chicago%2C+IL"
      job_cities = Scraper.scrape_jobs(url)
    end

    # def list_jobs
    #   JobReviews.new.all.each_with_index(1) do |job, index|
    #     puts "#{index}. #{job.name}"
    #   end
    # end

end




















#d
