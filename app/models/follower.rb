class Follower

    attr_accessor :name, :age, :life_motto

    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def cults
        scults = []
        Bloodoath.all.each do |oath|
            if oath.follower == self
                scults << oath.cult
            end
        end
        scults
    end

    def join_cult(cult)
        Bloodoath.new(date, cult, self)
    end

    def self.of_a_certain_age(age)
        Follower.all.select {|f| f.age > age}        
    end

    def self.all
        @@all
    end
end