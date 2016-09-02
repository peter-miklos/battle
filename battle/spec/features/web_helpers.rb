def sign_in_and_play
  visit('/')
  fill_in :player_1, with: "Matt"
  fill_in :player_2, with: "Thao"
  click_button "Submit"
end

def attack_and_switch
  click_button('Attack')
  click_button('OK')
end
