class ScorecategorieController < ApplicationController
 def new
    @scorecategorie = Scorecategorie.new
  end

  def list
    @scorecategorie = Scorecategorie.all
  end

  def show
    @scorecategorie = Scorecategorie.find(params[:id])
  end

  def create
    @scorecategorie = Scorecategorie.new(params[:scorecategorie])
    if @scorecategorie.save
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
     @scorecategorie = Scorecategorie.find(params[:id])
  end

  def update
    @scorecategorie = Scorecategorie.find(params[:id])
    if @scorecategorie.update_attributes(params[:scorecategorie])
      redirect_to :action => 'show', :id => @scorecategorie
    else
      render :action => 'edit'
    end
  end

end
