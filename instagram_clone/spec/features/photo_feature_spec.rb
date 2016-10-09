require 'rails_helper'

describe 'photo feed' do

  xit 'should show a feed of all the users photos' do
    user_sign_up
    expect(page).to have_content
  end
end
