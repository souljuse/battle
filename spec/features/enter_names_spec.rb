feature 'enter names' do
	scenario 'will input names with get and saves with an instance variable' do
		visit('/')
		fill_in(:Player1, with: 'Tom')
		fill_in(:Player2, with: 'Jerry')
		click_button('Submit')
		expect(page).to have_content('Tom versus Jerry')
	end
end


feature 'show points' do
	scenario 'will show player 2s hit points to player 1' do
		visit('/')
		fill_in(:Player1, with: 'Tom')
		fill_in(:Player2, with: 'Jerry')
		click_button('Submit')
		expect(page).to have_content('Jerry has 100 hit points')
	end
end
