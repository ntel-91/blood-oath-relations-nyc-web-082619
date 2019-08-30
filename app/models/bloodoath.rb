class BloodOath

    @@all = []
    attr_reader :date
    attr_accessor :cult, :follower
    def initialize(date, follower, cult)
        @date = date
        @follower = follower
        @cult = cult
        @@all << self
    end

    def self.all
        @@all
    end

end
