require 'test_helper'

class SiteTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end

   test "should not save site without its field name" do
     site = Site.new
     assert_not site.save, "Saved the site without its name"
   end

end
