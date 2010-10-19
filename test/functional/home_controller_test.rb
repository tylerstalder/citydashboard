require 'test_helper'

class HomeControllerTest < ActionController::TestCase

  context "User can access the home page of the project" do
    setup do
      @user = Factory(:user)
      sign_in(@user)
      get :index
    end
    
    should respond_with(:success)
    should render_template(:index)
    
  end

end