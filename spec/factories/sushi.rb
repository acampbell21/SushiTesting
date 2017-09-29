FactoryGirl.define do
  factory :sushi, class: Sushi do
    name 'Test Roll'
    price (1..25).to_a.sample
    ingredients 'Rice and Wasabi'
  end
end
