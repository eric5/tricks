require 'spec_helper'

describe UsersController do
  describe "GET #new" do
    it "set @user" do
      get :new
      expect(assigns(:user)).to be_instance_of(User)
    end
  end

  describe "POST #create" do
    context "with valid input" do
      before do
        post :create, user:  { email: "test@gmail.com", password: "secret", password_confirmation: "secret", name: "Eric Wu" }
      end

      it "creates a user" do
        expect(User.count).to eq(1)
      end

      it "redirects to the sign in page" do
        expect(response).to redirect_to sign_in_path
      end

      it "shows the success message" do
        expect(flash[:success]).to eq("Thanks for registering tricks, please sign in.")
      end
    end

    context "with invalid input" do
      before do
        post :create, user: { email: "eric@example.com" }
      end

      it "does not create a user" do
        expect(User.count).to eq(0)
      end

      it "redirects to the :new template" do
        expect(response).to render_template :new
      end

      it "show the error message" do
        expect(flash[:error]).to eq("Please check your input.")
      end
    end
  end
end
