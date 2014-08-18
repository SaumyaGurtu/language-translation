require 'test_helper'

class ContributorsControllerTest < ActionController::TestCase
  include Devise::TestHelpers
  fixtures :all
  setup do
    sign_in users(:one)
    @user = users(:one)
  end

  test "the truth" do
     assert true
  end

  test "no route like /contributors exists" do
	assert_raises(ActionController::UrlGenerationError) do
	  get :index
	end
  end

end
