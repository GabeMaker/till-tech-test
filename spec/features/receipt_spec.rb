require 'till'

feature 'As a customer I want to see the total cost (with tax) of what I order' do

  scenario 'When I order 2 Cafe Lattes, a Blueberry Muffin and a Chocolate Mudcake' do
    till = Till.new
    till.order "Cappucino", 2
    till.order "Blueberry Muffin"
    till.order "Choc Mudcake"
    expect(till.total).to eq 18.15
  end

  scenario 'When I order the items on the receipt example from test spec' do
    till = Till.new
    till.order "Cafe Latte"
    till.order "Flat White", 2
    till.order "Cappucino"
    till.order "Choc Mudcake", 2
    till.order "Choc Mousse"
    till.order "Affogato"
    till.order "Tiramisu"
    expect(till.total).to eq 65.3
    expect(till.tax).to eq 5.64
  end

end