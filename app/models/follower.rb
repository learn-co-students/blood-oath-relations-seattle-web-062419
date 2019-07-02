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
    end

    def join_cult(cult)
        
    end

    def self.of_a_certain_age(age)
    end

    def self.all
        @@all
    end
end