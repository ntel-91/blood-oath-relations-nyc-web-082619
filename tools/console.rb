require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

fire_dice = Cult.new("Fire Dice", "MN", 1999, "Roll Fire!!")
dirt_bug = Cult.new("Dirt Bug", "NY", 2019, "Dirty coding is bad")
new_bug = Cult.new("New Bug", "NY", 2019, "Dirty")
furry_comps = Cult.new("Furry Comps", "Belarus", 2019, "Spasibo")

anya = Follower.new("Anya", 20, "YUP")
nicky = Follower.new("Nicky", 20, "yo")
ted = Follower.new("Ted", 21, "pongo")
vicky = Follower.new("Vicky", 20, "DOpe")
sue = Follower.new("Sue", 21, "OH man")

#nicky_dirt_bug = BloodOath.new(Date.today.to_s, nicky, dirt_bug)
dirt_bug.recruit_follower(anya)
dirt_bug.recruit_follower(nicky)
dirt_bug.recruit_follower(ted)
dirt_bug.recruit_follower(vicky)
furry_comps.recruit_follower(vicky)
furry_comps.recruit_follower(sue)
#dirt_bug.cult_population
binding.pry


puts "Mwahahaha!" # just in case pry is buggy and exits
