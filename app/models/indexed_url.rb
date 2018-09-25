class IndexedUrl < ApplicationRecord
  before_create :parse

  def parse
    parser = HTML::Parser.new(self.url)
    self.headers = {
      h1: parser.extract_content("h1"),
      h2: parser.extract_content("h2"),
      h3: parser.extract_content("h3")
    }
    self.links = {
      content: parser.extract_content("a")
    }
  end

end
