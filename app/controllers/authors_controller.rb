class AuthorsController < ApplicationController

  def index
    @authors = Author.all
    render layout: "layout_author"

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
    @author = Author.find(params[:id])
  end

  def update
    @author = Author.find(params[:id])

    datos_autor = params[:author]

    nombre_autor = datos_autor[:name]
    nac_autor = datos_autor[:nationality]
    idioma_autor = datos_autor[:language]
    ganancias_autor = datos_autor[:annual_earnings]

    if @author.update(name: nombre_autor,
    nationality:nac_autor, language:idioma_autor,
    annual_earnings:ganancias_autor)

    redirect_to "/authors/#{@author.id}"
    else
      render :edit
      # o -> render 'edit'
    end

  end

  def delete
    @author = Author.find(params[:id])

    @author.destroy
    redirect_to "/authors/index"
  end
end
