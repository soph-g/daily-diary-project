require 'pg'

class DiaryEntry
  def self.all
    connection = PG.connect(dbname: 'daily_diary')
    result = connection.exec("SELECT * FROM diary_entries ORDER BY id;")
    result.map { |entry| entry['title'] }
  end

  def self.create

  end
end
