class Bakery
    @@all = []
    

    def initialize
        @@all << self
    end

    def self.all
        @@all
    end 

    def ingredients
        desserts.map{|d| d.ingredients}.flatten
    end

    def desserts
        Dessert.all.select{|dessert| dessert.bakery == self}
    end

    def average_calories
        ingredients.map{|i| i.calorie_count}.sum / desserts.length.to_f
    end

    def shopping_list
        ingredients.map{|i| i.name}
    end
end

