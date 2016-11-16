require "epub/parser"
class BookImporter
  def initialize(file, book)
    @file = file
    @book = book
  end

  def import!
    book_file = EPUB::Parser.parse(@file)
    book_content = []
    page_no = 0
    book_file.each_page_on_spine do |page|
      book_content[page_no] = page.content_document.nokogiri
      page_no += 1
    end

    book_content.each_with_index do |page_content, index|
      write_file(page_content, index)
    end
  end

  def write_file(page_content, _index)
    @book.parsed_chapters.create(content: page_content)
  end
end
