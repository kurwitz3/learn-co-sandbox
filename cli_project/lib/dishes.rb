  require 'pry'
 
 
class Dishes
 
    @@all = [] 

    attr_accessor :dish, :recipe 

    def initialize(dish, recipe)
        @dish = dish
        @recipe = recipe 
        @@all << self 
    end
    
   
    
    def self.all 
        @@all
    end  
   
    
    
   
end 
