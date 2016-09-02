require 'spec_helper'

feature 'Attacking' do

  scenario 'player 1 attacks player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "Matt attacked Thao"
  end

  scenario 'player 2 attacks player 1 after the first switch' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'OK'
    click_button 'Attack'
    expect(page).to have_content "Thao attacked Matt"
  end

  scenario 'reduce hitpoint by 10 of player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content "Thao: 100"
    expect(page).to have_content "Thao: 90"
  end
end
