require 'spec_helper'

feature 'show points' do
	scenario 'will show player 2s hit points to player 1' do
		sign_in_and_play
		expect(page).to have_content('Jerry has 100 hit points')
	end
end
