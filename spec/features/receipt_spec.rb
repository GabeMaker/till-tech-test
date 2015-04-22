require 'till'

feature 'As a customer I want to see the total cost of what I order' do

  scenario 'I order 2 Cafe Lattes, a Blueberry Muffin and a Chocolate Mudcake' do
    till = Till.new
    till.order "Cappucino", 2
    till.order "Blueberry Muffin"
    till.order "Choc Mudcake"
    expect(till.total).to eq 18.15
  end

end