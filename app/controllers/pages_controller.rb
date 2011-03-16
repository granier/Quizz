class PagesController < ApplicationController
  
  def home
    @title = "Accueil"
  end

  def administration
    @title = "Administration"
  end
  
end
