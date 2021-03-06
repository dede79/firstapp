require 'rails_helper'

  describe UsersController, :type => :controller do

    before do
      @user = User.create(email: "doe@example.com", password: "1234567890", admin: true)
      @user2 = User.create(email: "notadmin@email.com", password: "2123356789", admin: false)
    end

    describe "GET #show" do
      context "User is logged in" do
        before do
          sign_in @user
        end
        it "loads correct user details" do
          get :show, id: @user.id
          expect(response).to have_http_status(200)
          expect(assigns(:user)).to eq @user
        end
      end

      context "No user is logged in" do
        it "redirects to login" do
          get :show, id: @user.id
          expect(response).to redirect_to(root_path)
        end
      end
    
      context "No admin rights" do
        it "redirects to login page" do
          get :show, id: @user2.id
          expect(response).to redirect_to(root_path)
        end
      end
    end
  end

