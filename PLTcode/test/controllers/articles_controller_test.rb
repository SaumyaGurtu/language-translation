require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
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

  test "should create photo and go to its show page" do
    assert_difference('Article.count') do
        post :create, article: {category: 'Weapon', english: 'Knife'}
    end
    assert_redirected_to article_path(assigns(:article))
  end

  test "should delete photo" do
    language = Language.create({:name=>'Chuukese'})
    article = Article.create!({:language_id=>language.id, :category=>'Food'})
    assert_difference('Article.count',-1) do
      puts Article.count 
      delete :destroy, :language_id => language.id, :id => article.id
      assert_response :redirect
      puts Article.count
    end
    assert_nil Article.find_by_id(article.id)
    assert_not_nil Language.find_by_id(language.id)
  end

end
