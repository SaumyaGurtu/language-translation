require 'test_helper'

class InstallationTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end

   test "should not save installation without its field installation" do
     installation = Installation.new
     assert_not installation.save, "Saved the post without its name"
   end

end
