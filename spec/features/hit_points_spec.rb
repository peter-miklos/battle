require 'spec_helper'

feature 'hit points' do
  scenario 'shows the hit point of player 2' do
    sign_in_and_play
    expect(page).to have_content "Erce's hitpoint is 200"
  end
end
