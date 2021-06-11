class CustomerOrder

  attr_reader :menu, :order

  def initialize(takeaway = Takeaway.new)
    @menu = takeaway.menu
    @order = {}
  end

  def new_order(item)
    @menu.each { |dish, price| item == dish ? order[dish] = price : "no such dish" }
  end

end
