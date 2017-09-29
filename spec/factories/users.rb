FactoryGirl.define do

  number = rand(1000000)

  factory :user do
    first_name 'Test'
    last_name 'Tester'
    age (0..120).to_a.sample
    gender ['Male', 'Female', 'Other'].sample
    email '#{number}@gmail.com'
    password 'password'
  end
end
