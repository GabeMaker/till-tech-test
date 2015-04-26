describe Till do

  let (:till) {Till.new}

  it 'can take a single-item order' do
    till.order "Cafe Latte"
    expect(till.total).to eq 4.75
  end

  it 'can take a different single-item order' do
    till.order "Cappucino"
    expect(till.total).to eq 3.85
  end

  it 'can take a multi-item order' do
    till.order "Cappucino"
    till.order "Cafe Latte"
    expect(till.total).to eq 8.6
  end

  it 'can take an optional quantity argument when ordering' do
    expect(till).to respond_to(:order).with(1).argument
    expect(till).to respond_to(:order).with(2).arguments
  end

  it 'can calculate tax of 8.64% on an order' do
    till.order "Cappucino"
    till.order "Cafe Latte"
    expect(till.tax).to eq 0.74
  end

  it 'can track the quantity of each item ordered' do
    till.order "Cappucino"
    till.order "Cafe Latte"
    till.order "Cappucino", 2
    expect(till.quantities).to eq ({"Cappucino" => 3, "Cafe Latte" => 1 })
  end

  it 'can give change from £10' do
    till.order "Cappucino"
    till.order "Cafe Latte"
    expect(till.give_change_for 10).to eq 1.4
  end

  it 'gives discount over £10' do
    5.times do |x|
      till.order "Tiramisu"
    end
    expect(till.total).to eq 57
    expect(till.total_payable).to eq 54.15
  end

end