feature 'Add a new diary entry' do
  xscenario 'user adds a new diary entry to Diary' do
    visit ('/entries')
    click_button('New entry')
    fill_in('title', with: 'Bad day')
    fill_in('body', with: 'I forgot my umbrella and was splashed by a puddle :(')
    click_button('Submit')

    expect(page).to have_content('Bad day')
  end
end
