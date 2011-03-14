class UtilisateurController < ApplicationController
  def new
    @utilisateur = Utilisateur.new
  end

  def list
    @utilisateur = Utilisateur.all
  end

  def show
    @utilisateur = Utilisateur.find(params[:id])
  end

  def create
    @utilisateur = Utilisateur.new(params[:utilisateur])
    if @utilisateur.save
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
     @utilisateur = Utilisateur.find(params[:id])
  end

  def update
    @utilisateur = Utilisateur.find(params[:id])
    if @utilisateur.update_attributes(params[:utilisateur])
      redirect_to :action => 'show', :id => @utilisateur
    else
      render :action => 'edit'
    end
  end

end
