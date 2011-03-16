class QuestionnairefiniController < ApplicationController
  def new
    @questionnairefini = Questionnairefini.new
  end

  def list
    @questionnairefini = Questionnairefini.all
  end

  def show
    @questionnairefini = Questionnairefini.find(params[:id])
  end

  def create
    @questionnairefini = Questionnairefini.new(params[:questionnairefini])
    if @questionnairefini.save
      redirect_to :action => 'list'
    else
      render :action => 'new'
    end
  end

end
