class Scraper

  def self.scrape_categories(url)
    website = Nokogiri::HTML(open(url))
    section = website.css("div.itemized")
    binding.pry
    # section.css("#main").css(".category-recipe")[0].css("a")[0].attr("title")
  end
end

# section.text(".href")

    # section.css("#main.href").css("href")[0].attr("title").each do |recipe|
        # section.css("#main").css(".category-recipe")[0].css("a")[0].attr("title")
      # recipe
    # end
 #    section.css("div #post-28457")[0].text.gsub('\n','')
 #    section.css("div.p.post.publish.category-recipe")[0].css("h3 a").text
 #    section.css("div.p1.post.publish.category-recipe")[0].css("h3 a").text
 #    section.css("div.p2.post.publish.category-recipe")[0].css("h3 a").text
 #    section.css("div").text
 #    section.css("div")[0].css("h3 a").text.gsub(/[\n\t]/, "")
 #     [0]
 #     #href, title
 #    section.css("#main").css(".post")[0].css("a")[0].attr("title")
 #    section.css("#main").css(".category-recipe")[0].css("a")[0].attr("title")
 #    #=> "Beef and Radish Soup (Soegogi-muguk)"
 #
 #    [0].attr("title")
 #    #=> "Beef short ribs soup (Galbitang)"
 #
 # section.css("#main")[0]
 # .css("a")[0].attr("title") this contains all recipes

  #(Attr:0x3ffb5de160c0
    #     pry(Scraper)> section.css("div #post-28457")[0].text
# => "\n\n\nBeef short ribs soup\n\nGalbitang\t\n갈비탕 "
    #^gives me an empty array


# pry(Scraper)> section.css("#main")[0]
  # => #(Element:0x3ffb5e09c4e8 {
  #   name = "div",
  #   attributes = [
  #     #(Attr:0x3ffb5de1362c { name = "id", value = "main" }),
  #     #(Attr:0x3ffb5de135dc { name = "class", value = "itemized" })],
  #   children = [
  #     #(Text "\n"),
  #     #(Element:0x3ffb5dd9b5dc {
  #       name = "div",
  #       attributes = [ #(Attr:0x3ffb5de12c40 { name = "class", value = "itemized-intro clearfix" })],
  #       children = [
  #         #(Text "\n"),
  #         #(Element:0x3ffb5de12740 {
  #           name = "img",
  #           attributes = [
  #             #(Attr:0x3ffb5de126c8 { name = "width", value = "75" }),
  #             #(Attr:0x3ffb5de126b4 { name = "height", value = "75" }),
  #             #(Attr:0x3ffb5de126a0 {
  #               name = "src",
  #               value = "https://www.maangchi.com/wp-content/uploads/2017/11/kongnamulgukbap-youtube-75x75.jpg"
  #               }),
  #             #(Attr:0x3ffb5de1268c { name = "class", value = "alignleft wp-post-image" }),
  #             #(Attr:0x3ffb5de12678 { name = "alt", value = "" }),
  #             #(Attr:0x3ffb5de12664 {
  #               name = "srcset",
  #               value = "https://www.maangchi.com/wp-content/uploads/2017/11/kongnamulgukbap-youtube-75x75.jpg 75w, https://www.maangchi.com/wp-content/uploads/2017/11/kongnamulgukbap-youtube-150x150.jpg 150w"
  #               }),
  #             #(Attr:0x3ffb5de12650 { name = "sizes", value = "(max-width: 75px) 100vw, 75px" })]
  #           }),
  #         #(Element:0x3ffb5de0f0cc {
  #           name = "p",
  #           attributes = [ #(Attr:0x3ffb5de0f054 { name = "class", value = "taxonomy-desc" })],
  #           children = [
  #             #(Text "Korean soup, or "),
  #             #(Element:0x3ffb5de0e8e8 { name = "em", children = [ #(Text "guk")] }),
  #             #(Text " is an essential element of Korean food culture. Many Koreans feel that along with rice, kimchi, and "),
  #             #(Element:0x3ffb5de0e460 {
  #               name = "em",
  #               children = [
  #                 #(Element:0x3ffb5de0e0f0 {
  #                   name = "a",
  #                   attributes = [
  #                     #(Attr:0x3ffb5de0e08c {
  #                       name = "href",
  #                       value = "https://www.maangchi.com/recipes/banchan"
  #                       })],
  #                   children = [ #(Text "banchan")]
  #                   })]
  #               }),
  #             #(Text ", no meal is complete without it.")]
  #           }),
  #         #(Text "\n")]
  #       }),
  #     #(Text " \n"),
  #     #(Element:0x3ffb5e098870 {
  #       name = "div",
  #       attributes = [
  #         #(Attr:0x3ffb5de16c28 { name = "id", value = "post-31375" }),
  #         #(Attr:0x3ffb5de16c14 {
  #           name = "class",
  #           value = "p post publish author-maangchi category-recipe tag-beef-radish-soup tag-easy-soup-recipe tag-%eb%ac%b4%ea%b5%ad tag-%eb%ac%b4%ec%9a%b0%ea%b5%ad tag-%ec%87%a0%ea%b3%a0%ea%b8%b0-%eb%ac%b4%ec%9a%b0%ea%b5%ad tag-%ec%87%a0%ea%b3%a0%ea%b8%b0%eb%ac%b4%ea%b5%ad tag-korean-food tag-korean-food-blog tag-korean-food-images tag-korean-food-website tag-korean-kitchen tag-korean-radish-and-beef-soup tag-korean-recipes tag-maangchi-korean-cooking tag-maangchi-recipes tag-non-spicy-soup tag-soegogimuguk tag-soup-recipe y2013 m09 d08 h08 alt taxonomy clearfix"
  #           }),
  #         #(Attr:0x3ffb5de16c00 { name = "data-recipeid", value = "31375" })],
  #       children = [
  #         #(Text "\n"),
  #         #(Element:0x3ffb5de1614c {
  #           name = "a",
  #           attributes = [
  #             #(Attr:0x3ffb5de160d4 {
  #               name = "href",
  #               value = "https://www.maangchi.com/recipe/soegogi-muguk"
  #               }),
  #           *  #(Attr:0x3ffb5de160c0 { name = "title", value = "Beef and Radish Soup (Soegogi-muguk)" })],
  #           children = [
  #             #(Text "\n"),
  #             #(Element:0x3ffb5de0f61c {
  #               name = "img",
  #               attributes = [
  #                 #(Attr:0x3ffb5de0f590 { name = "width", value = "150" }),
  #                 #(Attr:0x3ffb5de0f57c { name = "height", value = "150" }),
  #                 #(Attr:0x3ffb5de0f568 {
  #                   name = "src",
  #                   value = "https://www.maangchi.com/wp-content/uploads/2013/09/beef-and-radish-soup-150x150.png"
  #                   }),
  #                 #(Attr:0x3ffb5de0f554 {
  #                   name = "class",
  #                   value = "attachment-thumbnail size-thumbnail wp-post-image"
  #                   }),
  #                 #(Attr:0x3ffb5de0f518 { name = "alt", value = "" }),
  #                 #(Attr:0x3ffb5de0f504 {
  #                   name = "srcset",
  #                   value = "https://www.maangchi.com/wp-content/uploads/2013/09/beef-and-radish-soup-150x150.png 150w, https://www.maangchi.com/wp-content/uploads/2013/09/beef-and-radish-soup-75x75.png 75w"
  #                   }),
  #                 #(Attr:0x3ffb5de0f4f0 { name = "sizes", value = "(max-width: 150px) 100vw, 150px" })]
  #               })]
  #           }),
  #         #(Text "\n"),
  #         #(Element:0x3ffb5ddfb9a0 {
  #           name = "h3",
  #           children = [
  #             #(Element:0x3ffb5e0980c8 {
  #               name = "a",
  #               attributes = [
  #                 #(Attr:0x3ffb5ddfb338 {
  #                   name = "href",
  #                   value = "https://www.maangchi.com/recipe/soegogi-muguk"
  #                   })],
  #               children = [ #(Text "Beef and radish soup")]
  #               })]
  #           }),
