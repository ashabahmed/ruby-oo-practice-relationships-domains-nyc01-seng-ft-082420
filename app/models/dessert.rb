class Dessert
    @@all = []
    attr_accessor  :bakery, :calories

    def initialize(bakery)
        @bakery = bakery
        @@all << self
    end

    def dessert_ingredient
        DessertIngredient.all.select{|e| e.dessert == self}
    end

    def ingredients
        dessert_ingredient.map{|di| di.ingredient}
    end

    def calories
        ingredients.map{|i| i.calorie_count}.sum.to_f
    end
    

    def self.all
        @@all
    end

end
