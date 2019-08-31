require 'pry'
require 'date'
class Follower

    @@all = []

    #Follower#name: returns a String that is the follower's name
    #Follower#age: returns a Fixnum that is the age of the follower
    #Follower#life_motto: returns a String that is the follower's life motto
    attr_reader :name, :age, :motto
    def initialize(name, age, motto)
        @name = name
        @age = age
        @motto = motto
        @@all << self
    end
    
    #Follower#cults: returns an Array of this follower's cults
    def cults
        BloodOath.all.select do |oath|
            #binding.pry
            oath.follower == self
        end
    end

    #Follower#join_cult: takes in an argument of a Cult instance and 
    # adds this follower to the cult's list of followers

    def join_cult(cult_object)
        BloodOath.new(Date.today.to_s, self, cult_object)
    end

    #Follower.all: returns an Array of all the followers
    def self.all
        @@all
    end

    #Follower.of_a_certain_age: takes a Fixnum argument that is an 
    #age and returns an Array of followers who are the given age or 
    # older

    def self.of_a_certain_age(num)
        BloodOath.all.select do |oath|
            oath.follower.age >= num
        end
    end
end
