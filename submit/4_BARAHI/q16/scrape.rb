require_relative "Reuters"

    p "ScrapeしたいURLを入力してください."
    url = gets.chomp
    data = Reuters.new(url)
    p "title: #{data.title}"
    p "paragraph: #{data.paragraph}"
    p "time: #{data.date}"
  