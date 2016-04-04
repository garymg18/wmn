class Menu
  
  def initialize graph
    puts "Enter option:"
    menu = []
    menu << "Enter nodes count to generate random nodes"
    menu << "Show nodes info"
    menu << "Show graph info"
    menu << "Show shortest path"

    @graph = graph
    menu.each.with_index(1) do |elem,i|
      puts "#{i}) #{elem}"
    end
    puts "0) Exit"
    getOption()

  end

  def getOption
    print "Option: "
    option = gets()
    run option
  end

  def run opt
    opt = opt.to_i
    if opt == 1
      puts @graph.nodes.count
    elsif opt == 2
      puts @graph.nodes.each {|n| n.info}
    elsif opt == 3
    end
  end
end




