def sign_in_and_play_human
  visit('/')
  click_button 'Versus'
  fill_in :player_1_name, with: "Bob"
  fill_in :player_2_name, with: "Larry"
  click_button 'Submit'
end

def play_and_attack_human
  sign_in_and_play_human
  allow(Game.instance).to receive(:damage).and_return(10)
  click_link 'Attack'
  click_button 'OK'
end

def attack_to_death_human
  allow(Game.instance).to receive(:damage).and_return(10)
  9.times do
    click_link 'Attack'
    click_button 'OK'
  end
end

def sign_in_and_play_computer
  visit('/')
  click_button 'Train'
  fill_in :player_1_name, with: "Bob"
  click_button 'Submit'
end


def play_and_attack_computer
  sign_in_and_play
  allow(Game.instance).to receive(:damage).and_return(10)
  click_link 'Attack'
  click_button 'OK'
end

def attack_to_death_computer
  allow(Game.instance).to receive(:damage).and_return(10)
  9.times do
    click_link 'Attack'
    click_button 'OK'
  end
end
