require 'rails_helper'

#Capybara syntax

feature "User creates do" do
  scenario "successfully" do
    visit root_path
    click_link("Add a new todo")
    fill_in "Title", with: "Buy Milk" #Label Reference
    # page is provied by Capybara
    click_button("Submit")

    expect(page).to have_css ".todo li", text: "Buy Milk"
  end
end