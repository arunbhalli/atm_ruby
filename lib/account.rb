it 'check the length of a number' do
  numbers = 1234
  number_length = Math.log(number).to_i + 1
  expect(number_length).to eq 4
end