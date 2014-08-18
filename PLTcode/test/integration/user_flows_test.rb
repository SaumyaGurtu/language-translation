require 'test_helper'

class UserFlowsTest < ActionDispatch::IntegrationTest
  fixtures :all

  test "the truth" do
    assert true
  end

  test "should route to photo" do
    assert_routing '/articles/1', {controller: "articles", action: "show", id: "1"}
  end

  test "should route to installation" do
    assert_routing '/installations/1', {controller: "installations", action: "show", id: "1"}
  end

  test "should route to site" do
    assert_routing '/sites/1', {controller: "sites", action: "show", id: "1"}
  end

  test "should route to language" do
    assert_routing '/languages/1', {controller: "languages", action: "show", id: "1"}
  end

  test "should route to user" do
    assert_routing '/users/1', {controller: "users", action: "show", id: "1"}
  end

  test "should route to volunteer under site" do
    assert_routing '/sites/1', {controller: "sites", action: "show", id: "1"}
  end

  test "should route to contributor under site" do
    assert_routing '/sites/1', {controller: "sites", action: "show", id: "1"}
  end

end
