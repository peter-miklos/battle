require 'spec_helper'

feature 'Game Over' do

  scenario 'player 1 kills player 2' do
    sign_in_and_play
    18.times do
      click_button 'Attack'
      click_button 'OK'
    end
    click_button 'Attack'
    expect(page).to have_content "Thao died."
  end

end
