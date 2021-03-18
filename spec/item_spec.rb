require_relative '../lib/item'

describe 'An item of food or a beverage' do

  it 'has a name and volume' do
    item = Item.new
    expect(item.name).to eq('')
    expect(item.volume).to eq(0)
  end

end
