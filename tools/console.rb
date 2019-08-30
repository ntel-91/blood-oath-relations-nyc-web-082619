require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

fire_dice = Cult.new("Fire Dice", "MN", 1999, "Roll Fire!!")
dirt_bug = Cult.new("Dirt Bug", "NY", 2019, "Dirty coding is bad")
furry_comps = Cult.new("Furry Comps", "Belarus", 2019, "Spasibo")
anya = Follower.new("Anya")
nicky = Follower.new("Nicky")
nicky_dirt_bug = BloodOath.new(Date.today.to_s, nicky, dirt_bug)
binding.pry
dirt_bug.blood_oaths

puts "Mwahahaha!" # just in case pry is buggy and exits
