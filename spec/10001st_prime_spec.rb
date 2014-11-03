describe "#prime_number_for(nth_element)" do
  it 'returns 3 when 2 is passed in' do
    expect(prime_number_for(2)).to eq(3)
  end

  it 'returns 7 when 4 is passed in' do
    expect(prime_number_for(4)).to eq(7)
  end

  it 'returns 13 when 6 is passed in' do
    expect(prime_number_for(2)).to eq(3)
  end

  it 'returns 104743 when 10001 is passed in' do
    expect(prime_number_for(10001)).to eq(104743)
  end
end
