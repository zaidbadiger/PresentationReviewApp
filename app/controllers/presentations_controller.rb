class PresentationsController < ApplicationController 
  def new
    @presentation = Section.find(params[:id]).presentations.build
  end

  def show
    @user = current_user
    render 'new'
  end
  
  def create
    @presentation = Section.find(params[:id]).presentations.build(title:params[:title])
    @presentation.save
    redirect_to current_user
  end



  private
      def presentations_params
        params.permit(:name)
      end


end
