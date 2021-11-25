require 'open-uri'
class Reuters
  def initialize(url)
    @url = url
    @html = URI.open(@url) { |f|
    f.read
    }

  end
  def title
    data = ""
    title = @html.scan(%r{<title>(.+?)</title>})
    title.each{ |x|
    data += x[0]
  }
  return data
  end

  def paragraph
    data = ""
    paragraph = @html.scan(%r{<p class="Paragraph-paragraph-2Bgue ArticleBody-para-TD_9x">(.+?)</p>})
    paragraph.each{ |x|
  data += x[0]
  }
  return data
  end

  def date
    data = ""
    time = @html.scan(%r{<meta name="sailthru.date" content="(.+?)"/>})
    time.each{ |x|
    data += x[0]  
  }
  return data
  end
end