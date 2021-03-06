class Api::BooksController < ApplicationController
  def index
    books = Book.all
    @books = Book.all.order('id ASC')
    render 'index-book.json.jbuilder'
  end

  def show
    @book = Book.find_by(id: params[:id])
    render 'show-book.json.jbuilder'
  end

  def create
    @book = Book.new(
      title: params[:title],
      publisher: params[:genre],
      author_id: params[:author_id]
    )
    @book.save
    render 'show-book.json.jbuilder'
  end

  def update
    @book = Book.find_by(id: params[:id])
    @book.update(
      title: params[:title],
      publisher: params[:genre],
      book_id: params[:book_id]
    )
    @book.save
    render 'show-book.json.jbuilder'
  end

  def destroy
    @book = Book.find_by(id: params[:id])
    @book.destroy
    render 'destroy.json.jbuilder'
  end
end
