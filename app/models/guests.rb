class Guest
    @@all = []
    attr_accessor :name, :age
    
    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end  
    
    def self.all
        @@all
    end
    
    def new_trip(listing, length_of_trip)
        Trip.new(listing, self, length_of_trip)
    end

    def listings
        trips.map {|trip| trip.listing}
    end

    def trips
        Trip.all.select {|trip| trip.guest == self}
    end

    def trip_count
        self.trips.count
    end

    def self.pro_traveller
        self.all.select{|guest| guest.trip_count > 1}
    end

    def self.find_all_by_name(name)
        self.all.select {|guest| guest.name == name}
    end
end 

