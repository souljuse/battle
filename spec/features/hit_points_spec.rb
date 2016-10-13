require 'spec_helper'

feature 'show points' do
	scenario 'will show player 2s hit points' do
		sign_in_and_play
		expect(page).to have_content('Jerry has 100 hit points')
	end
end

feature 'show points' do
	scenario 'will show player 1s hit points' do
		sign_in_and_play
		expect(page).to have_content('Tom has 100 hit points')
	end
end
