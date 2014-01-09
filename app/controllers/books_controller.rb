# Book Controller
class BooksController < ApplicationController
  before_action :find_book, only: [:show, :edit, :update, :destroy, :upvote]

  def new
    @book = Book.new
  end

  def create
    @book = Book.create{params.require(:book).permit(:name)}
    redirect_to book_path(1)
  end
  
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to @book
    else
      render :new
    end
  end

  def destroy
  end

  def edit
  end

  def upvote
    @book.upvote += 1
    redirect_to book_path(@book)
  end

private

  def book_params
    params.require(:book).permit(:name, :text, :rank)
  end


end