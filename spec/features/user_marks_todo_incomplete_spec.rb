require "rails_helper"

feature("User marks todo incomplete") do
  scenario("successfully") do
    sign_in
    create_todo("Buy Milk")
    click_button("Mark complete")
    click_button("Mark incomplete")
    expect(page).not_to display_completes_todo("Buy Milk")
    expect(page).to display_todo("Buy Milk")
  end
end