require 'rails_helper'

RSpec.feature "HOMEPAGE", type: :feature do
  scenario 'homepage responds with status 200' do
    visit root_path

    expect(page).to have_http_status(200)
  end

  scenario 'homepage does not display navbar' do
    visit root_path

    expect(page).not_to have_selector("//nav")
  end
end
