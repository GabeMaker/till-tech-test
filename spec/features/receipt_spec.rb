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
end