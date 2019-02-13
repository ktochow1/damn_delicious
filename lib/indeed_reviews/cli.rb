#CLI controller

class CLI


  def start
    puts "Welcome, let's explore some job reviews!"
    puts "Today we'll explore popular and top-rated."
    puts "Please type either 'popular' or 'top-rated'."
    input = gets.strip.downcase
     case input
     when "popular"
         puts "Popular Jobs"
       when "top-rated"
         puts "Top-Rated Jobs"
        url = "https://www.indeed.com/companies?from=headercmplink&attributionid=homepage"
        job_types = Scraper.scrape_categories(url)
        puts job_types
       when "exit"
         puts "Goodbye! Hope to see you soon!"
      else "Hmm, I'm not sure what you meant. Can you try again please?"
      end
    end


end
