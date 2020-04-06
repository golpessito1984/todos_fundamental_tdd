require 'rails_helper'

#Capybara syntax

feature "User completes todo do" do
  scenario "successfully" do
    sign_in
    click_link("Add a new todo")
    fill_in "Title", with: "Buy Milk"
    click_button("Submit")

    click_button("Mark complete")

    expect(page).to have_css ".todo li.completed", text: "Buy Milk"
  end
end