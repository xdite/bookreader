class BooksController < ApplicationController
  before_action :authenticate_user!, only: %i(new create update edit destroy new_import create_import translate preview convert)
  before_action :set_book, only: %i(edit update destroy new_import create_import translate convert)

  # GET /books
  # GET /books.json
  def index
    @books = Book.order("id DESC")
  end

  def show
    @book = Book.find(params[:id])
    @parsed_chapters = @book.parsed_chapters.order("id ASC")
  end

  def preview
    @book = Book.find(params[:id])
  end

  def read
      @book = Book.find(params[:id])
  end

  def convert
    @book.convert!
    redirect_to :back
  end

  def new
    @book = Book.new
  end

  def new_import
  end

  def create_import
    if params[:book] && params[:book][:file].present?
      @book.update(book_params)
      BookImporter.new(params[:book][:file].tempfile, @book).import!
      redirect_to @book, notice: "Book was successfully updated."
    else
      flash[:alert] = "You need to upload something"
      render :new_import
    end
  end

  def translate
    @book.delay.translate!
    redirect_to :back
  end

  def edit
  end

  def create
    @book = current_user.books.new(book_params)
    if @book.save
      redirect_to books_path, notice: "Book was successfully created."
    else
      render :new
    end
  end

  def update
    if @book.update(book_params)
      redirect_to @book, notice: "Book was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to books_url, notice: "Book was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_book
    @book = current_user.books.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def book_params
    params.require(:book).permit(:title, :file)
  end
end
