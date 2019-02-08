#CLI controller

class CLI


  def start
    puts "Welcome to Maangchi's Cookbook!"
    puts "What meal would you like to cook today?"
    puts "Type: 'rice', 'noodles', or 'soup'."
    input = gets.strip.downcase
    case input
      when "rice"
        puts "Rice Recipes"
      when "noodles"
        puts "Noodle Recipes"
      when "soup"
        puts "Soup Recipes"
        url = "https://www.maangchi.com/recipes/soups"
        Scraper.scrape_categories(url)
      when "exit"
        puts "Goodbye! Hope to see you soon!"
      else "Hmm, I'm not sure what you meant. Can you try again please?"
      end
    end


end
