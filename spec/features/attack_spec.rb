require 'spec_helper'

feature "Attack player 2" do
  scenario "it should attack and give confirmation" do
    sign_in_and_play
    click_button("Attack!")
    expect(page).to have_content("Tom attacked Jerry!")
  end

  scenario "it should reduce Player 2's HP by 10" do
    sign_in_and_play
    click_button("Attack!")
    expect(page).to have_content("Jerry has 90 hit points")
  end
end
