class Menu
  
  def initialize graph
    puts "Enter option:"
    puts "1) Enter nodes count"
    puts "2) Show nodes info"
    puts "0) Exit"
    @graph = graph
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
    end
  end
end





