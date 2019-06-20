feature 'View diary entry titles' do
  scenario 'visit entries and see list of titles' do
    visit ('/entries')

    expect(page).to have_content('Diary entries')
    expect(page).to have_content('Haircut')
    expect(page).to have_content('Cool bike ride')
  end
end
