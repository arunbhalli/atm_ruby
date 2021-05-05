it 'check the length of a number' do
  numbers = 1234
  number_length = Math.log(number).to_i + 1
  expect(number_length).to eq 4
end

class Account 
  STANDARD_VALIDITY_YRS = 5
end

def set_expiry_date
  Date.today.next_year(Account::STANDARD_VALIDITY_YRS).strftime('%m/%Y')