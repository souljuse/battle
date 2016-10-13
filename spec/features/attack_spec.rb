require 'spec_helper'

feature 'Attack player' do
  scenario 'allows player 1 to attack and get a confirmation' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content ("Bob attacked Larry")
  end

  scenario 'allows player 2 to attack and get a confirmation' do
    play_and_attack
    click_link 'Attack'
    expect(page).to have_content ("Larry attacked Bob")
  end

  scenario 'reduce player 2 HP by 10' do
    play_and_attack
    expect(page).to have_content ("Larry: 40HP")
    expect(page).not_to have_content ("Larry: 50HP")
  end

  scenario 'reduce player 1 HP by 10' do
    play_and_attack
    click_link 'Attack'
    click_button 'OK'
    expect(page).to have_content ("Bob: 40HP")
    expect(page).not_to have_content ("Bob: 50HP")
  end
end
