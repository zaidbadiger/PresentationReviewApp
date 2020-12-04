class PresentationsController < ApplicationController
  def show
    
  end
    
  def new
    @user = current_user
    @presentation = Section.find(params[:id]).presentations.build
    render 'new'
  end
  
  def create
    @presentation = Section.find(params[:id]).presentations.build(presentations_params)
    @presentation.save
  end
end
