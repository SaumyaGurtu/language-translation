require 'test_helper'

class UserTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end

   test "should not save user without its fields username, role, login_approval, first_name, last_name" do
     user = User.new
     assert_not user.save, "Saved the user without its compulsory fields"
   end

   test "should not save user without its field username" do
     user = User.new
     user.role='Guest'
     user.login_approval='Not_Yet'
     user.first_name='Aliaa'
     user.last_name='Bhatt'
     assert_not user.save, "Saved the user without its username"
   end

   test "should not save user without its field role" do
     user = User.new
     user.username='Alia'
     user.login_approval='Not_Yet'
     user.first_name='Aliaa'
     assert_not user.save, "Saved the user without its role"
   end

   test "should not save user without its field login_approval" do
     user = User.new
     user.username='Alia'
     user.role='Guest'
     user.first_name='Aliaa'
     user.last_name='Bhatt'
     assert_not user.save, "Saved the user without its login_approval"
   end

   test "should not save user without its field first_name" do
     user = User.new
     user.username='Alia'
     user.role='Guest'
     user.login_approval='Not_Yet'
     user.last_name='Bhatt'
     assert_not user.save, "Saved the user without its first_name"
   end

   test "should not save user without its field last_name" do
     user = User.new
     user.username='Alia'
     user.role='Guest'
     user.login_approval='Not_Yet'
     user.first_name='Aliaa'
     assert_not user.save, "Saved the user without its last_name"
   end

end
