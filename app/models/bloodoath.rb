class Bloodoath

    attr_accessor :initiation_date, :cult, :follower

    @@all = []

    def initialize(initiation_date, cult, follower)
        @initiation_date = initiation_date
        @cult = cult
        @follower = follower
        @@all << self
    end

    def self.first_oath
        mindate = "2020-01-01"
        result = []
        self.all.each do |b|
            if b.initiation_date < mindate
                mindate = b.initiation_date
                result = b
            end
        end
        result
    end
    
    def self.all
        @@all
    end
end