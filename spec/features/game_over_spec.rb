require 'spec_helper'

  feature 'ends the game' do
    scenario 'player 1 wins' do
      sign_in_and_play
      attack_to_death
      expect(page).to have_content ('Larry loses.')
    end
  end
    