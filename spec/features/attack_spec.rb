require 'spec_helper'

feature 'Attack' do
  scenario 'Player 1 attacks Player 2 and gets a confirmation' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Peter attacked Erce'
  end
end

feature 'Attack' do
  scenario "Player 2's points is reduced by 10 after he/she is attacked" do
    sign_in_and_play
    click_button('Attack')
    click_link('OK')
    expect(page).to_not have_content "Erce's hitpoint is 200"
    expect(page).to have_content "Erce's hitpoint is 190"
  end
end
