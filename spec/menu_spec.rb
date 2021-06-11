require 'menu'

describe Takeaway do

  let(:takeaway) { Takeaway.new }

  it 'has a menu when initialized' do
    expect(takeaway.menu).not_to be_empty
  end

  describe 'list_dishes' do
    it 'can list dishes in menu' do
      expect(takeaway.list_dishes).to include(takeaway.menu)
    end
  end

end
