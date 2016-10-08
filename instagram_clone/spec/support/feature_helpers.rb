require 'rails_helper'

module FeatureHelpers

  def user_sign_up
    visit '/users/sign_up'
    fill_in 'user[email]', with: "rosie@allott.com"
    fill_in 'user[password]', with: "password"
    fill_in 'user[password_confirmation]', with: "password"
    click_button("Sign up")
  end

end
