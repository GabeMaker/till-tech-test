require 'till'

describe Till do
  it 'can add an item' do
    subject.add :cafe_latte
    expect(subject.items).to eq [:cafe_latte]
  end

  it 'can add multiple items' do
    subject.add :cafe_latte
    subject.add :flat_white
    subject.add :cappucino
    expect(subject.items).to eq [:cafe_latte, :flat_white, :cappucino]
  end

  it 'can calculate the price of one item' do
    subject.add :cafe_latte
    expect(subject.total).to eq 4.75
  end
end