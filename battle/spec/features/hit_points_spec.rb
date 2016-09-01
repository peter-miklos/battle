require 'spec_helper'

feature 'shows hitpoints of players' do
  scenario 'display hitpoints of players' do
    visit('/')
    fill_in :player_1_name, with: "Matt"
    fill_in :player_2_name, with: "Alfie"
    click_button "Submit"
    expect(page).to have_content "Matt: 100, Alfie: 100"
  end
end
