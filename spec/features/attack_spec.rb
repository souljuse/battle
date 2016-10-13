require 'spec_helper'

  feature 'Attack player' do
    it 'allows player to attack and get a confirmation' do
      sign_in_and_play
      click_link 'Attack'
      expect(page).to have_content ("Bob attacked Larry")
  end

  scenario 'reduce player 2 HP by 10' do
    sign_in_and_play
    click_link 'Attack'
    click_button 'OK'
    expect(page).to have_content ("Larry: 40HP")
    expect(page).not_to have_content ("Larry: 50HP")
  end
end
