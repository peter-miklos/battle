def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Peter'
  fill_in :player_2_name, with: 'Erce'
  click_button 'BATTLE!'
end
