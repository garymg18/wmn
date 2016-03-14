require 'yaml'
class Graph
  def initialize n
    @nodes = []
    (1..n).each {|elem| @nodes << Node.new("n#{elem}")}
  end

  def nodes
    @nodes
  end

  def node name
    @nodes.each do |node|
      if node.name == name
        return node
      else
        false
      end
    end

  end

  def loadConnections filename
    connections = YAML.load_file(filename)
    connections.each do |con|
      n1 = node(con[1]['node1'])
      n2 = node(con[1]['node2'])
      distance = con[1]['distance']
      n1.addConnectedNode(n2,distance)
      n2.addConnectedNode(n1,distance)
    end
  end
end