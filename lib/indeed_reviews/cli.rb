#CLI controller

class CLI


  def start
    puts "Welcome, let's explore some job reviews around the country!"
    puts "We'll be looking in New York City, Los Angeles, Chicago, and Boston!"
    puts "Please enter the city you wish to explore reviews."
    input = gets.strip.downcase
     case input
       when "new york city"
           puts "In New York City"
         when "los angeles"
           puts "In Los Angeles"
         when "chicago"
           puts "In Chicago"
         when "boston"
           puts "In Boston"
          url = "https://www.indeed.com/cmp?l=Boston%2C+MA"
          job_cities = Scraper.scrape_cities(url)

         when "exit"
           puts "Goodbye! Hope to see you soon!"
        else "Hmm, I'm not sure what you meant. Try again or type 'exit'."
      end
    end


end
