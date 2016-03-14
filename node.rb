require 'yaml'
class Node
  class Connection
    def initialize node,distance

    end
  end
  def name
    @name
  end

  def initialize name
    @name = name
    @connectedNodes = []
  end


  def addConnectedNode node,distance
    conn = {node: node, distance: distance}
    @connectedNodes << conn
  end

  def info
    puts "Node.name: #{@name}"
    print "Neighbourhood: "
    @connectedNodes.each do |n|
      print "#{n[:node].name}(#{n[:distance]}) "
    end
    puts ""
  end

  def showConnections
    #self.connectedNodes.each {|x|, puts x}
  end
end


def readConnections
  file = YAML.load_file('connections.yml')
  puts file.inspect
end


