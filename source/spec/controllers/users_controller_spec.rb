require 'rails_helper'


describe UsersController do
  before :each do
    FactoryGirl.reload
  end
  let(:sid) {FactoryGirl.create :user}
    describe 'GET #new' do
      it "renders the :new template" do
        get :new
        expect(:response).to render_template :new
      end
    end
  end
    describe 'create' do
      it 'should create a user successfully' do
      post :create, FactoryGirl.attributes_for(:user, user: @user)
      response.should be_success
    end

    describe 'index' do 
      it 'should allow user to view main page' do 
        get :index 
        expect(:response).to render_template :index
      end
    end
end