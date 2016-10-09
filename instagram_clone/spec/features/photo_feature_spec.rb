require 'rails_helper'

describe 'photo feed' do

  xit 'should show a feed of all the users photos' do
    user_sign_up
    expect(page).to have_content
  end

  it 'should allow user to post a new photo' do
    user_sign_up
    visit '/photos/new'
    expect(page).to have_content "Upload Photo"
  end
end
