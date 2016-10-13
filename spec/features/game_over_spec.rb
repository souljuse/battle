require 'spec_helper'

feature 'game over!' do
  scenario 'one player has 0hp' do
    sign_in_and_play
    10.times{attack}
    expect(page).to have_content 'Game over! Tom wins!'
  end
end
