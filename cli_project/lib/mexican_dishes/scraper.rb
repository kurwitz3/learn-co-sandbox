


class MexicanDishes::Scraper 

    WEB_URL = "https://www.mexicoinmykitchen.com/recipes/"
   
   
     def self.scrape_url  
        character_list = []
        
        html = open(WEB_URL)
        parse = Nokogiri::HTML(html)
        
        parse.css("li.wsp-post").each do |list|
            dish = list.css("a").children[0].text
            recipe = list.css("a").attr("href").value
            if MexicanDishes::Dishes.all.length < 10
          MexicanDishes::Dishes.new(dish,recipe)
        end
      end 
     end
  end 