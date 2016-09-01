require 'spec_helper'

describe 'Switch turns' do
  context 'seeing the current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "Peter's turn"
    end

    scenario 'after player 1 attacks' do
      sign_in_and_play
      click_button 'Attack'
      click_button 'OK'
      expect(page).to_not have_content "Peter's turn"
      expect(page).to have_content "Erce's turn"
    end
  end

end
