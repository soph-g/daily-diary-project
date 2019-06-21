feature 'View diary entry titles' do
  scenario 'visit entries and see list of titles' do
    DiaryEntry.create(title: "Haircut", body: "I got a snazzy new haircut")
    DiaryEntry.create(title: "Cool bike ride", body: "I popped a wheelie!")

    visit ('/entries')

    expect(page).to have_content('Diary entries')
    expect(page).to have_content('Haircut')
    expect(page).to have_content('Cool bike ride')
  end
end
