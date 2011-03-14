class CategorieController < ApplicationController
  def new
    @categorie = Categorie.new
  end

  def list
    @categorie = Categorie.all
  end

  def show
    @categorie = Categorie.find(params[:id])
  end

  def create
    @categorie = Categorie.new(params[:categorie])
    if @categorie.save
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
     @categorie = Categorie.find(params[:id])
  end

  def update
    @categorie = Categorie.find(params[:id])
    if @categorie.update_attributes(params[:categorie])
      redirect_to :action => 'show', :id => @categorie
    else
      render :action => 'edit'
    end
  end

end
