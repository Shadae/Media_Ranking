# Book Controller
class BooksController < ApplicationController
  before_do: 

  def new
    @book = Book.new
  end
  
  def index
    @book = Book.all
  end

  def create
  end

  def destroy
  end

  def edit
  end

  def upvote
  end

end