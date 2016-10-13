def sign_in_and_play
  visit('/')
  fill_in(:Player1, with: 'Tom')
  fill_in(:Player2, with: 'Jerry')
  click_button('Submit')
end

def attack
 click_button('Attack!')
end
