require 'diary_entry'

describe DiaryEntry do
  describe '.all' do
    it 'returns all diary entry titles' do
      entries = DiaryEntry.all

      expect(entries).to include("Haircut")
      expect(entries).to include("Cool bike ride")
    end
  end

  describe '.create' do
    it 'adds a new entry to the database' do
      entry = DiaryEntry.create(title: 'Bad day', body: 'I forgot my umbrella and was splashed by a puddle :(')

      expect(DiaryEntry.all).to include('Bad day')
    end
  end
end
