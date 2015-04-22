require 'till'

feature 'As a customer I want to see the total cost of what I order' do

  scenario 'I order a Cafe Latte' do
    till = Till.new
    till.order "Cafe Latte"
    expect(till.total).to eq 4.75
  end

  scenario 'I order a Cappucino' do
    till = Till.new
    till.order "Cappucino"
    expect(till.total).to eq 3.85
  end

  scenario 'I order a Cappucino and a Cafe Latte' do
    till = Till.new
    till.order "Cappucino"
    till.order "Cafe Latte"
    expect(till.total).to eq 8.6
  end

  scenario 'I order 2 Cafe Lattes, a Blueberry Muffin and a Chocolate Mudcake' do
    till = Till.new
    till.order "Cappucino", 2
    till.order "Blueberry Muffin"
    till.order "Choc Mudcake"
    expect(till.total).to eq 18.15
  end

end