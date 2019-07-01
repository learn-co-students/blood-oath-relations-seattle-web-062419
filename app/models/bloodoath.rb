class BloodOath
    attr_accessor :cult, :follower, :date
    @@all=[]
    def initialize(cult,follower)
        @cult=cult
        @follower=follower
        @date=Date.today.to_s
        @@all<<self
    end

    def self.all
        @@all
    end

    def self.first_oath
        @@all.min_by do |bloodoath|
            bloodoath.date
        end
    end

end