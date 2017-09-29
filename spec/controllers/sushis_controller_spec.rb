require 'rails_helper'

RSpec.describe SushisController, type: :controller do
  # This comes from our spec/support/controller_macros.rb file
  # By calling this method we are adding a before_each for
  # all spec that creates a user and logs them in
  # It also returns @user for all specs sowe have access to the current logged in user

  # This should return the minimal set of attributes required to create a valid
  login_user
  
  let(:valid_attributes) {
    { name: 'Dragon Roll', price: '15', ingredients: 'Fish' }
  }

  let(:invalid_attributes) {
    { name: '', amount: '15', ingredients: 'Fish' }
  }


  describe "GET #index" do
    it "returns a success response" do
      sushi = @user.sushis.create! valid_attributes
      get :index
      expect(response).to be_success
    end
  end

  describe "GET #show" do
    it "returns a success response" do
      sushi = @user.sushis.create! valid_attributes
      get :show, params: {id: sushi.id}
      expect(response).to be_success
    end
  end

  describe "GET #new" do
    it "returns a success response" do
      get :new
      expect(response).to be_success
    end
  end

  describe "GET #edit" do
    it "returns a success response" do
      sushi = @user.sushis.create! valid_attributes
      get :edit, params: {id: sushi.id}
      expect(response).to be_success
    end
  end


end
