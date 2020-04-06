module Features
  def sign_in
    sign_in_as("david.ruizdelarosa@gmail.com")
  end

  def sign_in_as(email)
    visit root_path
    fill_in "Email", with: email
    click_button("Sign in")
  end

end