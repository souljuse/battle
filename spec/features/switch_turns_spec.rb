require 'spec_helper'

  feature 'switch turns' do
    scenario 'allows players to switch turns' do
      sign_in_and_play
      click_link 'Attack'
      click_button 'OK'
      expect(page).to have_content 'Larry\'s turn'
    end
    
    scenario 'should be player one\'s turn be default' do
      sign_in_and_play
      expect(page).to have_content 'Bob\'s turn'
    end
  end