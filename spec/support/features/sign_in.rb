module Features
  def sign_in
    visit root_path
    fill_in "Email", with: "david.ruizdelarosa@gmail.com"
    click_button("Sign in")
  end
end