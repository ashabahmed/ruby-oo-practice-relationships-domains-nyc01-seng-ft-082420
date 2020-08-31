class Listing
    @@all = []
    attr_accessor :city, :days_available

    def initialize(city, days_available)
        @city = city
        @days_available = days_available
        @@all << self
    end

    def self.all
        @@all
    end

    def new_trip(guest, length_of_trip)
        Trip.new(self, guest, length_of_trip)
    end

    def guests
        trips.map {|trip| trip.guest}
    end

    def trips
        Trip.all.select {|trip| trip.listing == self}
    end

    def trip_count
        self.trips.count
    end
    
    def self.find_all_by_city(city)
        self.all.select {|listing| listing.city == city}
    end

    def self.most_popular
        most_common = nil
        highest_count = 0
        self.all.each do |listing| 
            if listing.trip_count > highest_count
                highest_count = listing.trip_count
                most_common = listing
            end
        end
        most_common

        # self.all.max_by{|location| location.trip_count}
    end
end


