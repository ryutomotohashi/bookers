class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
  end 
  
  def create
    book = Book.new(list_params)
    
    book.save
    
    
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
  end
  
  private
  
  def list_params
    params.requir(:book).permit(:title,:body)
  end
end
