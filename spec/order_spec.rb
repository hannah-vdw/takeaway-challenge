require 'order'
require 'menu'

describe CustomerOrder do

  let(:takeaway) { Takeaway.new }
  let(:customer_order) { CustomerOrder.new }
  let(:test_order) { { "Tofish" => 6 } }

  it 'receives menu from Takeaway class' do
    expect(customer_order.menu).to eq(takeaway.menu)
  end

  describe '#new_order' do
    it 'pushes dish and price to order hash' do
      customer_order.new_order("Tofish")
      expect(customer_order.order).to eq(test_order)
    end
  end

end
