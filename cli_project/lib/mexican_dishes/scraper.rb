require 'open-uri'
require "nokogiri"
require 'pry'


class MexicanDishes::Scraper 

    def initialize 
    
    
    end 
  
  
   WEB_URL = "https://www.mexicoinmykitchen.com/recipes/"
   
   
     def self.scrape_url  
        character_list = []
        html = open(WEB_URL)
        parse = Nokogiri::HTML(html)
        parse.css("li.wsp-post").each do |list|
            dish = list.css("a").children[0].text
            recipe = list.css("a").attr("href").value
          Dishes.new(dish,recipe)
       
        end 
     end
    end 