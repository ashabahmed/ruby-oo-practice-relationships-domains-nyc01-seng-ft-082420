class Trip
    
    attr_accessor :listing, :guest, :length_of_trip
    @@all = []

    def initialize(listing, guest, length_of_trip)
        @listing = listing
        @guest = guest
        @length_of_trip = length_of_trip
        @@all << self
    end

    def self.all
        @@all
    end
end




# seattle = Listing.new("Seattle", 10)
# chicago = Listing.new("Chicago", 12)

    

# john = Guest.new("John", 29)
# charles = Guest.new("Charles", 45)



# chicago.new_trip(john, 6)
# chicago.new_trip(john, 6)
# chicago.new_trip(john, 6)

# charles.new_trip(seattle, 8)


bakery1 = Bakery.new
ing = Ingredient.new("Bread", 90)
ing2 = Ingredient.new("Butter", 190)
des1 = Dessert.new(bakery1)
ing3 = Ingredient.new("cream", 87)

des3 = Dessert.new(bakery1)


testing = DessertIngredient.new(des1, ing)
testing2 = DessertIngredient.new(des1, ing2)
DessertIngredient.new(des3, ing3)