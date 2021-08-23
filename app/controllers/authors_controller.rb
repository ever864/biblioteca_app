class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def show

    @author = Author.find(params[:id])

  end

  def new

  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end
end
