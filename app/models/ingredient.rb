class Ingredient
    @@all = []
    attr_accessor :name, :calorie_count
    
    def initialize(name, calorie_count)
        @name = name
        @calorie_count = calorie_count
        @@all << self
    end

    def self.all
        @@all
    end

    def dessert_ingredients
        DessertIngredient.all.select{|e| e.ingredient == self}
    end
    
    def desserts
        dessert_ingredients.map{|d| d.dessert}
    end
    
    def bakeries
        desserts.map{|d| d.bakery}
    end

    def self.find_all_by_name(ingredient)
        self.all.select{|i| i.name == ingredient}
    end
end
