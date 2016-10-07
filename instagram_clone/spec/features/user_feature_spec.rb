require 'rails_helper'

describe 'sign up user' do
  it 'should display a sign up screen' do
    visit '/'
    expect(page).to have_content 'Email'
    expect(page).to have_button 'Log in'
  end
end
