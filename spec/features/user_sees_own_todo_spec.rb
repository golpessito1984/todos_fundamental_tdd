require 'rails_helper'

#Capybara syntax

feature "User sees own todo" do
  scenario "doesn't see others" do
    Todo.create!(title: "Buy Milk", email: "raul.ruizdelarosa@gmail.com")
    sign_in_as "david.ruizdelarosa@gmail.com"
    expect(page).not_to display_todo("Buy Milk")
  end
end