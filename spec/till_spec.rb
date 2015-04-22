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

end