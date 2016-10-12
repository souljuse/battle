require 'spec_helper'

feature 'enter names' do
	scenario 'will input names with get and saves with an instance variable' do
		sign_in_and_play
		expect(page).to have_content('Tom versus Jerry')
	end
end
