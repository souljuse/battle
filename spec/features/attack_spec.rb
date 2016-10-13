require 'spec_helper'

feature "Attacking" do
   before do
     sign_in_and_play
   end

  scenario "it should attack and give confirmation" do
    attack
    expect(page).to have_content("Jerry attacks Tom!")
  end

  scenario "it should reduce Player 2's HP by 10" do
    allow(Game.instance.the_attack).to receive(:tackle).and_return(10)
    attack
    expect(page).to have_content("Jerry has 90 hit points")
  end

  scenario "it should reduce Player 1's HP by 10" do
    allow(Game.instance.the_attack).to receive(:tackle).and_return(10)
    attack
    attack
    expect(page).to have_content("Tom has 90 hit points")
  end

  scenario "using the fire-ball button deals 5 damage" do
    click_button('Fire ball!')
    expect(page).to have_content("Jerry has 95 hit points")
  end

  scenario "using the death-punch button deals 20 if it hits" do
    allow(Game.instance.the_attack).to receive(:death_punch).and_return(20)
    click_button('Death Punch!')
    expect(page).to have_content("Jerry has 80 hit points")
  end
end
