require 'spec_helper'

feature 'Game Over' do

  scenario 'player 1 kills player 2' do
    sign_in_and_play
    18.times { attack_and_switch }
    click_button 'Attack'
    expect(page).to have_content "Thao died."
  end

end
