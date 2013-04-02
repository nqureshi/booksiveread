class BooksController < ApplicationController
  def new
    @book = Book.new
  end
  
  def show
    @book = Book.find(params[:id])
  end
  
  def index
    @books = Book.all.reverse
  end
  
  def edit
    @book = Book.find(params[:id])
  end
  
  def create
    @book = Book.create!(params[:book])
    if @book.save
      redirect_to @book
    else
      render 'new'
    end
  end
  
  def update
    @book = Book.find(params[:id])
    if @book.update_attributes(params[:book])
      redirect_to @book
    else
      render 'edit'
    end
  end
  
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
  end
end