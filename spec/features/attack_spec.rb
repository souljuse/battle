require 'spec_helper'

feature 'Attack player' do
  scenario 'allows player 1 to attack and get a confirmation' do
    sign_in_and_play_human
    allow(Game.instance).to receive(:damage).and_return(10)
    click_link 'Attack'
    expect(page).to have_content ("Bob attacked Larry for 10 damage")
  end

  scenario 'allows player 2 to attack and get a confirmation' do
    play_and_attack_human
    click_link 'Attack'
    expect(page).to have_content ("Larry attacked Bob for 10 damage")
  end

  scenario 'reduce player 2 HP by 10' do
    play_and_attack_human
    expect(page).to have_content ("Larry: 40HP")
    expect(page).not_to have_content ("Larry: 50HP")
  end

  scenario 'reduce player 1 HP by 10' do
    play_and_attack_human
    click_link 'Attack'
    click_button 'OK'
    expect(page).to have_content ("Bob: 40HP")
    expect(page).not_to have_content ("Bob: 50HP")
  end

  scenario 'human and copmuter players both receive damage' do
    play_and_attack_computer
    click_button('OK')
    expect(page).to have_content("Bob: 40HP")
    expect(page).to have_content("Computer: 40HP")
    expect(page).not_to have_content("Bob: 50HP")
    expect(page).not_to have_content("Computer: 50HP")
  end

  scenario 'human player to receive attack confirmation' do
    sign_in_and_play_computer
    allow(Game.instance).to receive(:damage).and_return(10)
    click_link 'Attack'
    expect(page).to have_content("Bob attacked Computer for 10 damage")
  end

  scenario 'computer player to receive attack confirmation' do
    play_and_attack_computer
    expect(page).to have_content("Computer attacked Bob for 10 damage")
  end
end
