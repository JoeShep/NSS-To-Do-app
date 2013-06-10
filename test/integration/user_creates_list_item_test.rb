require 'test_helper'

class UserCreatesListItemTest < ActionDispatch::IntegrationTest
  test "adding a new to-do item" do
    visit '/'
    click_link 'Create New To-Do List'
    fill_in 'List Title:', with: 'Packing List'
    fill_in 'Description', with: 'For our trip to Idaho'
    click_button 'Submit'
    visit '/lists/1'
    fill_in 'Add New Task', with: 'Potato Peeler'
    click_button 'Submit'
    assert_include page.body, "Your task has been added to the list."
    assert_include page.body, "Potato Peeler"
  end
end