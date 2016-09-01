feature 'Game Over' do
  context "when Player 2 reaches 0 points" do
    it "player 2 loses and receives a game over message" do
      sign_in_and_play
      18.times do
        click_button('Attack')
        click_button('OK')
      end
      click_button('Attack')
      expect(page).to have_content "Erce lost the game"
    end
  end
end
