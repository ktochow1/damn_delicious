#CLI controller

class CLI


  def start
    puts "Welcome to Maangchi's Cookbook!"
    puts "What are you in the mood to cook today?"
    puts "Please type: 'noodles', 'soup', or 'rice'."
    input = gets.strip.downcase
    case input
    when "rice"
        puts "Rice Recipes"
      when "soup"
        puts "Soup Recipes"
      when "rice"
        puts "Rice Recipes"
        url = "https://www.maangchi.com/recipes/rice"
        Scraper.scrape_categories(url)
      when "exit"
        puts "Goodbye! Hope to see you soon!"
      else "Hmm, I'm not sure what you meant. Can you try again please?"
      end
    end


end
