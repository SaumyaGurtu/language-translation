require 'test_helper'

class VolunteerTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end

   test "should not save volunteer without its field vname" do
     volunteer = Volunteer.new
     assert_not volunteer.save, "Saved the volunteer without its vname"
   end
end
