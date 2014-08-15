require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end

   test "should save article/photo without any field" do
     article = Article.new
     assert article.save, "Saved the article/photo without any field"
   end

end
