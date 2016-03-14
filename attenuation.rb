
# variables
# a = attenuation of signal in dB
# D is the length of the section of the path (in km) over which the rain is encountered
# Rp is the rate of rain in mm/h
# alpha, beta - constants

def distance (n1,n2)
  distance = Math.sqrt((n1.x-n2.x)**2 + (n1.y-n2.y)**2)
end

rp = 8
dist = 7
alpha = 1
beta = 0.2
d=3.8-0.6*Math.log(rp)
c=0.026-0.03*Math.log(rp)
b=2.3*rp**(-0.17)
u = Math.log(b*(Math.exp(c*d)))

puts "b: #{b}"
puts "c: #{c}"
puts "d: #{d}"
puts "u: #{u}"

attenuation = alpha * rp**beta*( ((Math.exp(u*beta*d) -1)/(u*beta)) - ( (b**beta * Math.exp(c*beta*d))/(c*beta) ) + ( (b**beta * Math.exp(c*beta*dist))/(c*beta) ))

puts "Attenuation: #{attenuation}"

class Node
	attr_accessor :x, :y
	def initialize(x,y)
		@x = x
		@y = y
	end
	def printCoordinates
    puts "x: #{@x}, y: #{@y}"
 	end
	
end

class MeshNetwork
	nodes = []
end

#n1 = Node.new(1,0)
#n2 = Node.new(2,2)
#n1.printCoordinates

#puts distance(n1,n2)
