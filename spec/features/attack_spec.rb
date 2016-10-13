require 'spec_helper'

feature "Attack player 2" do
  scenario "it should attack and give confirmation" do
    sign_in_and_play
    attack
    expect(page).to have_content("Jerry attacks Tom!")
  end

  scenario "it should reduce Player 2's HP by 10" do
    sign_in_and_play
    attack
    expect(page).to have_content("Jerry has 90 hit points")
  end
  scenario "it should reduce Player 1's HP by 10" do
    sign_in_and_play
    attack
    attack
    expect(page).to have_content("Tom has 90 hit points")
  end
end
