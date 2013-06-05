require 'test_helper'

class TaskIsAddedToListTest < ActionDispatch::IntegrationTest
  test "view a list of tasks" do
    Task.create!(title: "Learn Rails")
    assert_equal 1, Task.count
    visit '/tasks'
    assert_include page.body, "Learn Rails"
  end
end

