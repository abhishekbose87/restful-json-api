require "minitest/autorun"

require 'test_helper'

class ParserTest < Minitest::Test

  def setup
    stub_request(:any, "http://www.example.com").
      to_return(body: File.new("#{Rails.root}/tmp/response_body.txt"), status: 200)
    @parser = HTML::Parser.new("http://www.example.com")
  end

  def test_parser_for_h1
    assert_equal @parser.extract_content("h1"), ["Header 1"]
  end

  def test_parser_for_h2
    assert_equal @parser.extract_content("h2"), ["Header 2"]
  end

  def test_parser_for_h3
    assert_equal @parser.extract_content("h3"), ["Header 3", "Another h3 header"]
  end

  def test_parser_for_h3
    assert_equal @parser.extract_content("a"), ["Anchor text 1", "Anchor text 2"]
  end

end
