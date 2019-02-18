#CLI controller

class CLI


  def start
    puts "\nWelcome, let's explore some job reviews around the country!"
    puts "\nWe'll be looking in New York City, LA, Chicago, and Boston!"
    menu
  end

    def menu
      puts "\nPlease enter the city you wish to explore reviews."
      input = gets.strip.downcase
       case input
       when "new york city"
             puts "\nIn New York City"
             scrape_nyc
             choose_job
           when "la"
             puts "\nIn LA"
             scrape_la
             choose_job
           when "chicago"
             puts "\nIn Chicago"
             scrape_chicago
             choose_job
           when "boston"
             puts "\nIn Boston"
             scrape_boston
             choose_job
          when "exit"
             puts "\nGoodbye! Hope to see you soon!"
          else
            puts "\nHmm, I'm not sure what you meant. Try again or type 'exit'."
            menu
          end
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

    def choose_job
      puts "\nType the number associated with the company name to read employee reviews."
      input = gets.strip.to_i
      max = JobReviews.all.length
      if input.between?(1, max)
        job = JobReviews.all[input-1]
        display_reviews(job)
      else puts "\nInvalid input, please try again."
        choose_job
      end
       go_back
    end

    def display_reviews(job)
      Scraper.scrape_reviews(job)
    end

    def go_back
     puts "\nWould you like to explore more reviews?"
     input = gets.strip.downcase
     case input
       when "yes"
        puts "In the same city?"
        new_input = gets.strip.downcase
      case new_input
        when "yes"
          list_jobs
          choose_job
        when "no"
          puts "Would you like to visit a new city?"
          new_input2 = gets.strip.downcase
          case new_input2
            when "yes"
             start
            when "no"
             puts "No worries! Bye for now and come back soon!"

      when "no"
          puts "Goodbye! Come back soon!"
        else
          puts "Hm, not sure what you meant."
          #go_back
        end
    end
  end
end

    def list_jobs
      JobReviews.all.each.with_index(1) do |job, index|
        puts "#{index}. #{job.name}"
    end

end
