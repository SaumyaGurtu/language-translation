require 'test_helper'

class LanguageTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end

   test "should not save language without its field name" do
     language = Language.new
     assert_not language.save, "Saved the language without its name"
   end

end
