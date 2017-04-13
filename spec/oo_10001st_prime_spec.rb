describe "Prime" do
  it 'returns 3 when 2 is passed in' do
    expect(Prime.new(2).number).to eq(3)
  end

  it 'returns 7 when 4 is passed in' do
    expect(Prime.new(4).number).to eq(7)
  end

  it 'returns 13 when 6 is passed in' do
    expect(Prime.new(6).number).to eq(13)
  end

  it 'returns 104743 when 10001 is passed in' do
    # expect(Prime.new(10001).number).to eq(104743)
  end
end
