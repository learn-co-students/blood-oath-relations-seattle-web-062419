require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

deloitte = Cult.new("Deloitte", "MPLS", 1845, "Always One Step Ahead")
kpmg = Cult.new("KPMG", "Denver", 1987, "empower change")
pwc = Cult.new("PricewaterhouseCoopers", "Seattle", 1998, "solve important problems")
ey = Cult.new("EY", "NYC", 1989, "Now. Next. Beyond.")

dan = Follower.new("Dan", 41, "Are you hiring?")
selina = Follower.new("Selina", 58, "Gary?")
sue = Follower.new("Sue", 38, "N/a")

bo1 = Bloodoath.new(2018-05-01, pwc, dan)
bo2 = Bloodoath.new(1998-04-03, kpmg, selina)
bo3 = Bloodoath.new(2016-02-29, deloitte, sue)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
