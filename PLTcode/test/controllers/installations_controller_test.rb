require 'test_helper'

class InstallationsControllerTest < ActionController::TestCase
  include Devise::TestHelpers
  fixtures :all

  test "the truth" do
     assert true
  end

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

  test "should create installation and go to its show page" do
    assert_difference('Installation.count') do
        post :create, installation: {installation: 'Albania'}
    end
    assert_redirected_to installation_path(assigns(:installation))
  end

  test "should not create installation without its name" do
    assert_no_difference('Installation.count') do
        post :create, installation: {email: 'Albania@pc.com'}
    end
  end

  test "should delete installation along with all sites under that installation" do
    installation = Installation.create!({:installation=>'Azerbaijan'})
    site = Site.create!({:installation_id=>installation.id, :name=>'Leh'})
    assert_difference('Installation.count',-1) do
      puts Installation.count 
      delete :destroy, :id => installation.id
      assert_response :redirect
      puts Installation.count
    end
    assert_nil Installation.find_by_id(installation.id)
    assert_nil Site.find_by_installation_id(installation.id)
    assert_nil Site.find_by_id(site.id)
  end

end
