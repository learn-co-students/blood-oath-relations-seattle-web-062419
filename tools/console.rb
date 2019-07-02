require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

deloitte = Cult.new("Deloitte", "MPLS", 1845, "Always One Step Ahead")
kpmg = Cult.new("KPMG", "Seattle", 1987, "empower change")
pwc = Cult.new("PricewaterhouseCoopers", "Seattle", 1998, "solve important problems")
ey = Cult.new("EY", "NYC", 1989, "Now. Next. Beyond.")

dan = Follower.new("Dan", 41, "Are you hiring?")
selina = Follower.new("Selina", 58, "Gary?")
sue = Follower.new("Sue", 38, "N/a")

a = Follower.new("a", 41, "a")
b = Follower.new("b", 58, "b")
c = Follower.new("c", 38, "c")

d = Follower.new("d", 41, "d")
e = Follower.new("e", 58, "e")
f = Follower.new("f", 38, "f")

g = Follower.new("g", 41, "g")
h = Follower.new("h", 58, "h")
i = Follower.new("i", 38, "i")

bo1 = Bloodoath.new("2018-05-01", ey, dan)
bo2 = Bloodoath.new("2018-05-01", kpmg, dan)
bo3 = Bloodoath.new("1998-04-03", kpmg, selina)
bo4 = Bloodoath.new("1998-04-03", ey, selina)
bo5 = Bloodoath.new("2016-02-29", deloitte, dan)
bo6 = Bloodoath.new("2016-02-29", ey, sue)
bo7 = Bloodoath.new("2016-02-29", deloitte, a)
bo8 = Bloodoath.new("2016-02-29", ey, a)
bo9 = Bloodoath.new("2016-02-29", deloitte, b)
bo10 = Bloodoath.new("2016-02-29", ey, b)
bo11 = Bloodoath.new("2016-02-29", deloitte, c)
bo12 = Bloodoath.new("2016-02-29", ey, c)
bo13 = Bloodoath.new("2016-02-29", deloitte, d)
bo14 = Bloodoath.new("2016-02-29", ey, d)
bo15 = Bloodoath.new("2016-02-29", deloitte, e)
bo16 = Bloodoath.new("1998-04-02", ey, e)
bo17 = Bloodoath.new("2016-02-29", deloitte, f)
bo18 = Bloodoath.new("2016-02-29", ey, f)
bo19 = Bloodoath.new("2016-02-29", deloitte, g)
bo20 = Bloodoath.new("2016-02-29", ey, g)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
