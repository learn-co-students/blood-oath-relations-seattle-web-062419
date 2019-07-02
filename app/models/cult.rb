class Cult

    attr_accessor :name, :location, :founding_year, :slogan
    
    @@all = []


    def initialize(name, location, founding_year, slogan)

        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan

        @@all << self
    end

    def recruit_follower(date, follower)
        Bloodoath.new(date, self, follower)
    end

    def cult_population
        Bloodoath.all.select do |oath|
            oath.cult == self
        end.count
    end

    def self.find_by_name(name)
        self.all.find {|cult|
            cult.name == name
    }
    end

    def self.find_by_location(local)
        self.all.find {|cult|
            cult.location == local
    }
    end

    def self.find_by_founding_year(year)
        self.all.find {|cult|
            cult.founding_year == year
    }
    end

    def self.all
        @@all
    end
end