class Api::AuthorsController < ApplicationController
  def index
    @authors = Author.all
    render 'index.json.jbuilder'
  end

  def show
    @author = Author.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @author = Author.new(full_name: params[:full_name])
    @author.save
    render 'show.json.jbuilder'
  end

  def update
    @author = Author.find_by(id: params[:id])
    @author.update(full_name: params[:full_name])
    @author.save
    render 'show.json.jbuilder'
  end

  def destroy
    @author = Author.find_by(id: params[:id])
    @author.destroy
    render 'destroy.json.jbuilder'
  end
end
