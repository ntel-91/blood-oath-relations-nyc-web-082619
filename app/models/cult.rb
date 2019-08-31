require 'pry'
require 'date'

class Cult

    @@all = []
    attr_reader :founding_year
    attr_accessor :name, :location, :slogan
    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def recruit_follower(follower)
        BloodOath.new(Date.today.to_s, follower, self)    
    end

    def blood_oaths
        BloodOath.all.select do |oath|
            oath.cult == self
        end
    end

    def followers
        self.blood_oaths.map do |oath|
            oath.follower 
        end
    end

    def cult_population
        BloodOath.all.count do |oath|
            oath.cult == self
        end
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        self.all.find do |cult|
            cult.name == name
        end  
    end

    def self.find_by_location(location)
        self.all.select do |cult|
            cult.location == location
        end
    end

    def self.find_by_founding_year(founding_year)
        self.all.select do |cult|
            cult.founding_year == founding_year
        end
    end

    #binding.pry

    
end
