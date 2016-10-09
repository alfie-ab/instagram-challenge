require 'rails_helper'

describe 'sign up user' do
  it 'should display a sign up screen' do
    visit '/'
    expect(page).to have_content 'Email'
    expect(page).to have_button 'Log in'
  end

  it 'should take you to the homescreen' do
    user_sign_up
    expect(page).to have_content "Photos"
  end

  xit 'should allow user to log out' do
    visit '/'
    expect(page).to have_content "Log out"
  end
end
