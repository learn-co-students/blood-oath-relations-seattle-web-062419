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

    def average_age
        ages = []
        Bloodoath.all.each do |oath|
            if oath.cult == self
                ages << oath.follower.age
            end
        end
        ages.sum / ages.length
    end

    def my_followers_mottos
        Bloodoath.all.select do |oath|
            if oath.cult == self
                print oath.follower.life_motto
            end
        end
    end

    def self.least_popular
        min = 10
        culta = ""

        self.all.each do |c|
            if c.cult_population < min
                min = c.cult_population
                culta = c
            end
        end
        culta
    end

    def self.most_common_location
        max = 0
        most = ""
        locations = []
        self.all.collect {|x| locations << x.location}
        
        Cult.all.each do |c|
            if locations.count(c.location) > max
                max = locations.count(c.location)
                most = c.location
            end
        end
        most
    end

    def self.all
        @@all
    end
end