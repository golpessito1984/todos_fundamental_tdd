require 'rails_helper'

#Capybara syntax

feature "User completes todo do" do
  scenario "successfully" do
    sign_in
    create_todo("Buy Milk")
    click_button("Mark complete")
    expect(page).to display_completes_todo("Buy Milk")
  end
end