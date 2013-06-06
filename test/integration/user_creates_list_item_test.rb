require 'test_helper'

class UserCreatesListItemTest < ActionDispatch::IntegrationTest
  test "adding a new to-do item" do
    visit '/'
    click_link 'Add New Task'
    fill_in 'Title', with: 'Learn Ruby on Rails'
    click_button 'Submit'
    assert_include page.body, "Your task has been added to the list."
    visit '/tasks'
    assert_include page.body, 'Learn Ruby on Rails'
  end
end