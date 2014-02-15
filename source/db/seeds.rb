def generate_charge(user, state, count=1)
  count.times do
    user.charges.create(amount: Random.rand(99)*100, currency: "usd", state: state)
  end
end

customer1 = User.create(first_name: 'Johny', last_name: 'Flow')
customer2 = User.create(first_name: 'Raj', last_name: 'Jamnis')
customer3 = User.create(first_name: 'Andrew', last_name: 'Chung')
customer4 = User.create(first_name: 'Mike', last_name: 'Smith')

generate_charge customer1, 'successful', 5
generate_charge customer2, 'successful', 3
generate_charge customer3, 'successful'
generate_charge customer4, 'successful'

generate_charge customer3, 'failed', 3
generate_charge customer4, 'failed', 2

generate_charge customer1, 'disputed', 3
generate_charge customer2, 'disputed', 2