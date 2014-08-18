require 'test_helper'

class LanguagesControllerTest < ActionController::TestCase
  include Devise::TestHelpers
  fixtures :all
  setup do
    sign_in users(:one)
    @user = users(:one)
  end

  test "the truth" do
     assert true
  end

  test "index should render correct template and layout" do
	get :index
	assert_template :index
	assert_template layout: "layouts/application"
	assert_response :redirect
  end

  test "should create language and go to its show page" do
    assert_difference('Language.count') do
        post :create, language: {name: 'Chuukese'}
    end
    assert_redirected_to language_path(assigns(:language))
  end

  test "should not create language without its name" do
    assert_no_difference('Language.count') do
        post :create, language: {}
    end
  end

  test "should delete language along with all photos under that language" do
    language = Language.create!({:name =>'Sanskrit'})
    article = Article.create!({:language_id => language.id, :category => 'Weapon'})
    assert_difference('Language.count',-1) do
      puts Language.count 
      delete :destroy, :id => language.id
      assert_response :redirect
      puts Language.count
    end
    assert_nil Language.find_by_id(language.id)
    assert_nil Article.find_by_language_id(language.id)
    assert_nil Article.find_by_id(article.id)
  end

end
