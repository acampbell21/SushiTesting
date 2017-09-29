require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:age) }
    it { is_expected.to validate_presence_of(:gender) }
  end

  describe 'associations' do
    it { should have_many(:sushis) }

  end

  describe '#is_old_enough' do
    before(:each) do
      @user = FactoryGirl.create(:user, age: 20)
    end

    it 'returns true if user age greater than 16' do
      expect(@user.is_old_enough?).to eq(true)

    end

  end
end
