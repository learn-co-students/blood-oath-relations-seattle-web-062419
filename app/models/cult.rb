class cult
    attr_accessor :name, :location, :founding_year, :slogan, :minimum_age
    @@all=[]
   
    def initialize(name,location,founding_year,slogan)
        @name=name
        @location=location
        @founding_year=founding_year
        @slogan=slogan
        @minimum_age=minimum_age
        @followers=[]
        @@all<<self
    end

    def recruit_follower(follower)
        if follower.age > @minimum_age
            BloodOath.new(self,follower)
        else 
            puts"Sorry,#{follower.name} is not yet old enough to join this cult."
        end
    end
        
    end

    def cult_population
        self.followers.size
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        @@all.select do |cult|
            cult.name==name
        end
    end

    def self.find_by_location(location)
        @@all.select do |cult|
            cult.location==location
        end
    end

    def self.find_by_founding_year(year)
        @@all.select do |cult|
            cult.founding_year==year
        end
    end

    def bloodoaths
        BloodOath.all.select do |bloodoath|
            bloodoath.cult ==self
        end
    end

    def followers
        self.bloodoaths.collect do |bloodoath|
            bloodoath.follower
        end
    end

    def average_age
        num=self.cult_population
        total_age=0
        self.followers.each do |follower|
            total_age += follower.age
        end
        if num==0
            return 0
        else 
            total_age.to_f/num.to_f
        end
    end

    def my_followers_mottos
        self.followers.each do |follower|
            print follower.life_motto
        end
    end

    def self.least_popular
        least_popular_size=@@all.first.cult_population
        least_popular=@@all.first
        @@all.each do |cult|
           if  cult.cult_population<least_popular_size
              least_popular_size=cult.cult_population
              least_popular=cult
           end
        end
        least_popular
    end

    def self.most_common_location
        hash={}
        @@all.each do |cult|
            if !hash[cult.location]
                hash[cult.loation]=1
            else 
                hash[cult.location]+=1
            end
        end
        hash.key(hash.values.max)
    end
    
  
       
        

end






    


