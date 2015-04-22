describe 'Till' do
  it 'can take an optional quantity argument when ordering' do
    till = Till.new
    expect(till).to respond_to(:order).with(1).argument
    expect(till).to respond_to(:order).with(2).arguments
  end
end