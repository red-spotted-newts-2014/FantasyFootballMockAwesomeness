require 'rails_helper'


describe WelcomeController do
  before :each do
    FactoryGirl.reload
  end
   let(:user) { FactoryGirl.create :user }
    context "#create_user" do
      it "redirects to root path if correct credentials" do
        post :create_user, :user => user.slice(:email, :password)
        expect(response).to redirect_to root_path
      end
      it "redirects to sign in path with bad email" do
        post :create_user, :user => user.slice(:password)
        expect(response).to redirect_to root_path

      end
      it "redirects to sign in path with bad password" do
        post :create_user, :user => user.slice(:email)
        expect(response).to redirect_to root_path
      end
    end

    context "#authenticate" do
      it "redirects to root path if correct credentials" do
        post :authenticate, :user => user.slice(:email, :password)
        expect(response).to redirect_to root_path
      end
      it "redirects to sign in path with bad email" do
        post :authenticate, :user => user.slice(:password)
        expect(response).to redirect_to root_path

      end
      it "redirects to sign in path with bad password" do
        post :authenticate, :user => user.slice(:email)
        expect(response).to redirect_to root_path
      end
    end
end