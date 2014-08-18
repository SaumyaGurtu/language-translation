require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  include Devise::TestHelpers
  fixtures :all
  setup do
    sign_in users(:one)
    @user = users(:one)
  end

  test "index should render correct template and layout" do
	get :index
	assert_template :index
	assert_template layout: "layouts/application"
	assert_response :redirect
  end

end
