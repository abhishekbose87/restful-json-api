class IndexedUrl < ApplicationRecord
  before_save :parse

  validates :url, presence: true
  validate :url_has_scheme

  def url_has_scheme
    if ["http", "https"].exclude? URI.parse(url).scheme
      errors.add(:url, "http or https needs to be mentioned")
    end
  end

  private

  def parse
    parser = HTML::Parser.new(self.url)
    self.headers = {
      h1: parser.extract_content("h1"),
      h2: parser.extract_content("h2"),
      h3: parser.extract_content("h3")
    }
    self.links = {
      hrefs: parser.extract_content("a")
    }
  end

end
