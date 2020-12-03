class SectionsController < ApplicationController
  before_action :set_section

  def new
    @section = Course.find(params[:id]).sections.build()
    
  end

  def create
    
    @section = Course.find(params[:id]).sections.build(sections_params)
    @section.save
    redirect_to current_user
  end


  private
    def sections_params
      params.permit(:section_number)
    end

    def set_section
      @section = Course.find(params[:id]).sections.build()
    end

end
