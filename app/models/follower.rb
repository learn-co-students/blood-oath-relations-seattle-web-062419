class Follower
    attr_accessor :name, :age, :life_motto
    @@all=[]
    def initialize(name,age,life_motto)
        @name=name
        @age=age
        @life_motto=life_motto
        @@all<<self
    end

    def cults
        BloodOath.all.select do |bloodoath|
            bloodoath.follower==self
        end
    end

    def join_cult(cult)
        if  self.age>=cult.minimum_age
            BloodOath.new(cult,self)
        else 
            puts "Sorry, you are too young to join #{cult.name}"
    end

    def self.all
        @@all
    end

    def self.of_a_certain_age(age)
        @@all.select do |follower|
            follower.age>age
        end
    end

    def my_cults_slogans
        self.cults.each do |cult|
            puts cult.slogan
        end
    end

    def self.most_active
        most_active_size=@@all.first.cults.size
        most_active=@@all.first
        @@all.each do |follower|
            if follower.cults.size>most_active_size
                most_active_size=follower.cults.size
                most_active=follower
            end
        end
        most_active
    end

    def self.top_ten
        hash={}
        array=[]
        @@all.each do |follower|
            if hash[follower.cults]
                hash[follower.cults]+=1
            else hash[follower.cults]=1
            end
        end
        array = hash.keys.sort_by{|k| hash|k|}.reverse
        array[0..9]
    end

    def fellow_cult_members
        @@all.select do |follower|
            follower.cults == self.cults && folower.cults !=[] && follower != self
        end
        
    end
end