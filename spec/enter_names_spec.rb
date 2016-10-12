feature 'enter names' do
	scenario 'will input names with get and saves with an instance variable' do
		visit('/')
		fill_in('Player 1', with: 'Tom')
		fill_in('Player 2', with: 'Jerry')
		click_button('Submit')
		expect(page).to have_content('Tom versus Jerry')
	end
end