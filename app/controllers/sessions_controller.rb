class SessionsController < ApplicationController
  def new
    @title = "Connexion"
  end

  def create
    data = params[:session]
    utilisateur = Utilisateur.authenticate(data[:mail], data[:mdp])
    if utilisateur.nil? then
      flash[:error]= "Mot de passe ou email invalide !"
      redirect_to signin_path
    else
      session[:utilisateur]=utilisateur
      redirect_to root_path
    end
  end

  def destrroy
  end

end
