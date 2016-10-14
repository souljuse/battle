require 'spec_helper'


feature 'Enter names' do
  it 'allows players to enter their names' do
    sign_in_and_play_human
    expect(page).to have_content ("Larry")
  end

  it 'shows the players HP' do
    sign_in_and_play_human
    expect(page).to have_content ("Larry: 50HP")
  end
end
