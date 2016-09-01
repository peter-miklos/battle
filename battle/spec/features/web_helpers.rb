def sign_in_and_play
  visit('/')
  fill_in :player_1, with: "Matt"
  fill_in :player_2, with: "Thao"
  click_button "Submit"
end
