class Api::BooksController < ApplicationController
  def index
    @books = Book.all
    render 'index.json.jbuilder'
  end

  def show
    @book = Book.first
    render 'show.json.jbuilder'
  end
end
