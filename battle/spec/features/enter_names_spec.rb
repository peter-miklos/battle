require 'spec_helper'

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: "Matt"
    fill_in :player_2_name, with: "Alfie"
    click_button "Submit"
    expect(page).to have_content "Matt vs. Alfie"
  end
end