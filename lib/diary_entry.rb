require 'pg'

class DiaryEntry
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'daily_diary_test')
    else
      connection = PG.connect(dbname: 'daily_diary')
    end
    result = connection.exec("SELECT * FROM diary_entries ORDER BY id;")
    result.map { |entry| entry['title'] }
  end

  def self.create(title:, body:)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'daily_diary_test')
    else
      connection = PG.connect(dbname: 'daily_diary')
    end
    result = connection.exec("INSERT INTO diary_entries (title, body) VALUES('#{title}', '#{body}');")
  end
end
