class ReponseController < ApplicationController
 def new
    @reponse = Reponse.new
  end

  def list
    @reponse = Reponse.all
  end

  def show
    @reponse = Reponse.find(params[:id])
  end

  def create
    @reponse = Reponse.new(params[:reponse])
    if @reponse.save
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

  def edit
     @reponse = Reponse.find(params[:id])
  end

  def update
    @reponse = Reponse.find(params[:id])
    if @reponse.update_attributes(params[:reponse])
      redirect_to :action => 'show', :id => @reponse
    else
      render :action => 'edit'
    end
  end

 def delete
    Reponse.find(params[:id]).destroy
    redirect_to :action => 'list'
  end

  def destroy
    Reponse.find(params[:id]).destroy
    redirect_to :action => 'list'
  end

end
