require 'spec_helper'

feature 'hit points' do
  scenario 'shows the hit point of both players' do
    sign_in_and_play
    expect(page).to have_content "Erce's hitpoint is 200"
    expect(page).to have_content "Peter's hitpoint is 200"
  end

  scenario "Player 2's points is reduced by 10 after he/she is attacked" do
    sign_in_and_play
    click_button('Attack')
    click_button('OK')
    expect(page).to_not have_content "Erce's hitpoint is 200"
    expect(page).to have_content "Erce's hitpoint is 190"
  end

  scenario "Player 1's points is reduced by 10 after he/she is attacked" do
    sign_in_and_play
    click_button('Attack')
    click_button('OK')
    click_button('Attack')
    click_button('OK')
    expect(page).to_not have_content "Peter's hitpoint is 200"
    expect(page).to have_content "Peter's hitpoint is 190"
  end
end
