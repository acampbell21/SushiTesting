require 'rails_helper'

RSpec.describe Sushi, type: :model do
  it 'contains Rice and Wasabi' do
    FactoryGirl.create(:user)
    expect(FactoryGirl.create(:sushi).ingredients).to eq('Rice and Wasabi')
  end

  it 'contains mystery fish' do
    sushi = FactoryGirl.create(:sushi, ingredients: 'Mystery Fish')
    expect(sushi.ingredients).to eq('Mystery Fish')
  end
end
