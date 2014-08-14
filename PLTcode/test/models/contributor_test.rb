require 'test_helper'

class ContributorTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end

   test "should not save contributor without its field name" do
     contributor = Contributor.new
     assert_not contributor.save, "Saved the contributor without its name"
   end
end
