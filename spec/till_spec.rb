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

  it 'can calculate tax of 8.64% on an order' do
    subject.add "Cafe Latte"
    expect(subject.tax).to eq 0.41
  end

  it 'can give a discount of 5% when over £50' do
    11.times do subject.add "Cafe Latte"
    end
    expect(subject.total).to eq 52.25
    subject.pay 50
    expect(subject.change_given).to eq 0.36
  end
end