require 'spec_helper'

feature 'Enter names' do

  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Abi'
    fill_in :player_2_name, with: 'Erce'
    click_button 'BATTLE!'
    expect(page).to have_content 'Abi vs. Erce'
  end
end

feature 'hit points' do
  scenario 'shows the hit point of player 2' do
    visit('/')
    fill_in :player_1_name, with: 'Peter'
    fill_in :player_2_name, with: 'Erce'
    click_button 'BATTLE!'
    expect(page).to have_content "Erce's hitpoint is 200"
end

end
