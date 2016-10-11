require 'spec_helper'

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Irene'
    fill_in :player_2_name, with: 'Amaal'
    click_button "Submit"
    expect(page).to have_content "Irene vs Amaal"
  end
end

feature 'View hit points' do
  scenario 'see Player 2 HP' do
    visit('/')
    fill_in :player_1_name, with: 'Irene'
    fill_in :player_2_name, with: 'Amaal'
    click_button "Submit"
    expect(page).to have_content "Amaal: 60HP"
  end
end
