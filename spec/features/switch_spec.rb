require 'spec_helper'

feature 'switch players' do
  scenario 'change player_1 to player_2' do
    sign_in_and_play
    attack
    attack
    expect(page).to have_content("Jerry attacked Tom!")
  end
end
