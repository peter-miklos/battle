require 'spec_helper'

feature 'switches turns' do
  scenario 'switches from player 1 to player 2 after first attack' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content "Thao's turn to fight"
  end

  scenario 'switches from player 2 to player 1 after second attack' do
    sign_in_and_play
    attack_and_switch
    click_button('Attack')
    expect(page).to have_content "Matt's turn to fight"
  end
end
