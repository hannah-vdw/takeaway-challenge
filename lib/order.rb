class CustomerOrder

  attr_reader :menu, :order, :total_price

  def initialize(takeaway = Takeaway.new)
    @menu = takeaway.menu
    @order = {}
  end

  def new_order(item)
    @menu.each { |dish, price| item == dish ? order[dish] = price : "no such dish" }
  end

  def order_total
    total_price = 0
    @order.each { |dish, price| total_price += price }
    return total_price
  end
end
