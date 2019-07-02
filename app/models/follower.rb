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

    def my_cults_slogans
        Bloodoath.all.select do |oath|
            if oath.follower == self
                puts oath.cult.slogan
            end
        end
    end

    def self.most_active
        max = 0
        most = ""
        names = []
        oath_names = []
        self.all.each {|x| names << x.name}
        Bloodoath.all.each{|b| oath_names << b.follower.name}

        names.each {|n| 
            if oath_names.count(n) > max
                max = oath_names.count(n)
                most = n
            end
    }
        # not sure why this works but I don't trust it
        # Bloodoath.all.each do |b|
        #     if names.count(b.follower.name) > max
        #         max = names.count(b.follower.name)
        #         most = b.follower.name
        #     end
        # end
        most
    end

    def num_cults_joined
        oath_names = []
        Bloodoath.all.each{|b| oath_names << b.follower.name}
        oath_names.count(self.name)
    end

    def self.top_ten
        # find number of cults joined for each follower
        n_j = Follower.all.collect {|f| f.num_cults_joined}

        # find min of top 10 of that ^ array
        # establish minimum number of cults joined as a variable
        min = n_j.sort.reverse.take(10).last
        
        # if number of cults joined for each follower >= the min, add to array
        # if number of cults joined for each follower < the minimum, do not add to array
        f_array = []
        Follower.all.each do |f|
            if f.num_cults_joined >= min
                f_array << f
            end
        end
        f_array.take(10)
    end

    def self.all
        @@all
    end
end