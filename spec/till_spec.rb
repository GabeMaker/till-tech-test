require 'till'

describe Till do
  it 'can add an item' do
    subject.add "Cafe Latte"
    expect(subject.items).to eq ["Cafe Latte"]
  end

  it 'can add multiple items' do
    subject.add "Cafe Latte"
    subject.add "Flat White"
    subject.add "Cappucino"
    expect(subject.items).to eq ["Cafe Latte", "Flat White", "Cappucino"]
  end

  it 'can calculate the price of one item' do
    subject.add "Cafe Latte"
    expect(subject.total).to eq 4.75
  end

  it 'can calculate the price of multiple items' do
    subject.add "Cafe Latte"
    subject.add "Flat White"
    subject.add "Cappucino"
    expect(subject.total).to eq 13.35
  end

  it 'can give change' do
    subject.add "Cafe Latte"
    subject.pay 10
    expect(subject.change_given).to eq 5.25
  end
end