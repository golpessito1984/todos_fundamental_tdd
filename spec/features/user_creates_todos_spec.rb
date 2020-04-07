require 'rails_helper'

#Capybara syntax

feature "User creates do" do
  scenario "successfully" do
    sign_in
    create_todo("Buy Milk")
    expect(page).to display_todo("Buy Milk")
  end
end