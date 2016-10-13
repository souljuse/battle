require 'spec_helper'

feature 'game over!' do
  before do
   sign_in_and_play
   18.times{attack}
  end
   scenario 'one player has 0hp' do
    attack
    expect(page).to have_content 'Game over! Tom wins!'
  end
end
