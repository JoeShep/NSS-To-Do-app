require 'test_helper'

class UserCreatesToDoListTest < ActionDispatch::IntegrationTest
  test "adding a new to-do list" do
    visit '/'
    click_link 'Create New To-Do List'
    fill_in 'List Title:', with: 'Packing List'
    fill_in 'Description', with: 'For our trip to Idaho'
    click_button 'Submit'
    assert_include page.body, "Your new to-do list has been created."
    visit '/lists'
    assert_include page.body, 'Packing List'
  end
end