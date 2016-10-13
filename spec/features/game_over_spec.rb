require 'spec_helper'

feature 'game over!' do
  before do
   sign_in_and_play
   allow(Game.instance.second_player).to receive(:damage).and_return(100)
   attack
  end
   scenario 'one player has 0hp' do
    expect(page).to have_content 'Game over! Tom wins!'
  end
end
