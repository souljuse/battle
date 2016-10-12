require 'spec_helper'

feature 'Attack player' do
  it 'allows player to attack and get a confirmation' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content ("Bob attacked Larry")
  end
end
