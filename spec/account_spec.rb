it 'is expected to have an expiry date on initialize' do
    expect_date = Date.today.next_year(5).starftime("%m/%y")
    expect(subject.exp_date).to eq expect_date
end

it 'is expected to have :active status on initialize' do
  expect(subject.account_status).to eq :active
end
