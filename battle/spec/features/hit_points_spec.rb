require 'spec_helper'

feature 'shows hitpoints of players' do
  scenario 'display hitpoints of players at game start' do
    sign_in_and_play
    expect(page).to have_content "Thao: 100"
    expect(page).to have_content "Matt: 100"
  end

  scenario 'display the current hitpoint of player 2 after first attack' do
    sign_in_and_play
    attack_and_switch
    expect(page).to have_content "Thao: 90"
  end

  scenario 'display the current hitpoint of player 1 after second attack' do
    sign_in_and_play
    attack_and_switch
    attack_and_switch
    expect(page).to have_content "Thao: 90"
    expect(page).to have_content "Matt: 90"
  end
end
