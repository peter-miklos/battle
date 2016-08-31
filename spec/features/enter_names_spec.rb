require 'spec_helper'

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Peter'
    fill_in :player_2_name, with: 'Stephan'
    click_button 'Submit'
    expect(page).to have_content 'Peter vs. Stephan'
  end
end
