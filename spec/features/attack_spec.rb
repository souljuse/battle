require 'spec_helper'

feature "Attacking" do
   before do
     sign_in_and_play
     allow(Game.instance.first_player).to receive(:damage).and_return(10)
     allow(Game.instance.second_player).to receive(:damage).and_return(10)
     attack
   end

  scenario "it should attack and give confirmation" do
    expect(page).to have_content("Jerry attacks Tom!")
  end

  scenario "it should reduce Player 2's HP by 10" do
    expect(page).to have_content("Jerry has 90 hit points")
  end
  scenario "it should reduce Player 1's HP by 10" do
    attack
    expect(page).to have_content("Tom has 90 hit points")
  end

  # scenario "using the fire-ball button deals 5 damage" do
  #   click_button('Fire-ball!')
  #   expect(page).to have_content("Jerry has 95 hit points")
  # end
  #
  #
  # scenario "using the death-punch button deals 20 if it hits" do
  #   allow(Game.instance.second_player).receive(:)
  #   click_button('Death-punch!')
  #   expect(page).to have_content("Jerry has 80 hit points")
  # end
end
