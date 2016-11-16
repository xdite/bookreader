class ChaptersController < ApplicationController
  def read
    @book = Book.find(params[:book_id])
    @chapter = @book.chapters.find(params[:id])
  end
end
