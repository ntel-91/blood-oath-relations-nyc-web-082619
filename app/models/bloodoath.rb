require 'pry'
require 'date'

class BloodOath

    @@all = []
    attr_reader :date
    attr_accessor :cult, :follower
    def initialize(Date.today.to_s, follower, cult)
        @date = Date.today.to_s
        @follower = follower
        @cult = cult
        @@all << self
    end

    def self.all
        @@all
    end

end
