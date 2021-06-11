class Takeaway 

  attr_reader :menu

  def initialize
    @menu = { "Tofish" => 6, 
            "Chips" => 2, 
            "Peas" => 2 }
  end

  def list_dishes
    @menu.each { | dish, price | puts "#{dish}, £#{price}" }
  end

end
