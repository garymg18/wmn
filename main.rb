load 'node.rb'
load 'graph.rb'
load 'menu.rb'

graph = Graph.new(12)
graph.loadConnections ('connections.yml')
Menu.new (graph)
