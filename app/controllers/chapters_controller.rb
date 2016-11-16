class ChaptersController < ApplicationController
  def read
    @book = Book.find(params[:book_id])
    @chapter = @book.chapters.find(params[:id])
  end

  def edit
    @book = Book.find(params[:book_id])
    @chapter = @book.chapters.find(params[:id])
  end

  def update
    @book = Book.find(params[:book_id])
    @chapter = @book.chapters.find(params[:id])

    if @chapter.update(chapter_params)
      redirect_to read_book_chapter_path(@book, @chapter)
    else
      render :edit
    end
  end

  private

  def chapter_params
    params.require(:chapter).permit(:title, :content)
  end
end
