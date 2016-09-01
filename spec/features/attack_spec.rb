require 'spec_helper'

feature 'Attack' do
  scenario 'Player 1 attacks Player 2 and gets a confirmation' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Peter attacked Erce'
  end

  scenario 'Player 2 attacks Player 1 and gets a confirmation' do
    sign_in_and_play
    click_button('Attack')
    click_button('OK')
    click_button('Attack')
    expect(page).to have_content 'Erce attacked Peter'
  end

  scenario "Switch turns" do
    sign_in_and_play
    expect($game.current_turn.name).to eq "Peter"
  end
end
