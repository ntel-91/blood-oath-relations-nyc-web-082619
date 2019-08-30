require 'pry'
require 'date'
class Cult

    @@all = []
    attr_reader :year
    attr_accessor :name, :location, :slogan
    def initialize(name, location, year, slogan)
        @name = name
        @location = location
        @year = year
        @slogan = slogan
        @@all << self
    end

    def recruit_follower(follower)
        BloodOath.new(Date.today.to_s, follower, self)    
    end

    def blood_oaths
        BloodOath.all.select do |oath|
            binding.pry
            oath.cult == self
        end
    end


    def followers
        self.blood_oaths.map do |oath|
            oath.follower 
        end
    end

    def cult_population
       #self.followers.length
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        ## return cult instance that matches name
        self.all.find do |cult|
            cult.name == name
        end  
    end

    

    def self.find_by_founding_year(year)
        self.all.select do |cult|
            cult.year == year
        end
    end

    #binding.pry

    


end
