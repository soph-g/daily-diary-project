require 'diary_entry'

describe DiaryEntry do
  describe '.all' do
    it 'returns all diary entry titles' do
      entries = DiaryEntry.all

      expect(entries).to include("Haircut")
      expect(entries).to include("Cool bike ride")
    end
  end
end
