require 'open-uri'

module HTML
  class Parser
    def initialize(url)
      @page = Nokogiri::HTML(open(url))
    end

    def extract_content(type)
      @page.css("#{type}").map do |link|
        link.text
      end
    end
  end
end
