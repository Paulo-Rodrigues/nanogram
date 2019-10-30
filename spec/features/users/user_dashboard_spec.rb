require 'rails_helper'

RSpec.feature 'User' do
  scenario 'Signed up goes to profile' do
    visit root_path
    click_link "Sign up"

    fill_in "Username", with: 'Username'
    fill_in "Email", with: 'test@test.com'
    fill_in "Password", with: 'password'
    fill_in "Password confirmation", with: 'password'

    click_button "Sign up"

    expect(page).to have_content('Username')
  end

  scenario 'Logged user goes to dashboard' do
    user = create(:account)
    login_as(user)

    visit root_path

    expect(page).to have_content('show')
  end
end
