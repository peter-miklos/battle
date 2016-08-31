require 'spec_helper'

feature 'see player hits' do
  scenario 'see player 2 hit points' do
    visit('/')
    fill_in :player_1_name, with: 'Peter'
    fill_in :player_2_name, with: 'Stephan'
    click_button 'Submit'
    expect(page).to have_content "Stephan 200 points"
  end
end
