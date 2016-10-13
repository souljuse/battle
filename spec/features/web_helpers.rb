def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: "Bob"
  fill_in :player_2_name, with: "Larry"
  click_button 'Submit'
end

def play_and_attack
  sign_in_and_play
  click_link 'Attack'
  click_button 'OK'
end

def attack_to_death
  9.times do 
  click_link 'Attack'
  click_button 'OK'
  end
end