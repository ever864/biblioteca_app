class AuthorsController < ApplicationController
  def index
    @authors = Author.all
  end

  def show

    @author = Author.find(params[:id])

  end

  def new
    @author = Author.new
  end

  def create
    datos_autor = params[:author]

    nombre_autor = datos_autor[:name]
    nac_autor = datos_autor[:nationality]
    idioma_autor = datos_autor[:language]
    ganancias_autor = datos_autor[:annual_earnings]

    @author = Author.new(name: nombre_autor, nationality:nac_autor, language:idioma_autor, annual_earnings:ganancias_autor)

    @author.save
    redirect_to "/authors/#{@author.id}"
  end

  def edit
  end

  def update
  end

  def delete
  end
end
