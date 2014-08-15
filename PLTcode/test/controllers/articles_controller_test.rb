require 'test_helper'

class ArticlesControllerTest < ActionController::TestCase
   test "the truth" do
     assert true
   end

   test "the index" do
     get :index, use_route: :articles
     assert_response :success
     assert_not_nil assigns(:articles)
   end

end
