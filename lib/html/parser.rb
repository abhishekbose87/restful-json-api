require 'open-uri'

module HTML
  class Parser
    def initialize(url)
      @page = Nokogiri::HTML(open(url))
    end

    def extract_content(type)
      if type == "a"
        @page.css("a").collect { |x| x["href"] }
      else
        @page.css("#{type}").collect { |x| x.text.strip }
      end
    end
  end
end
