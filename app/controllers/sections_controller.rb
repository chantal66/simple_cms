class SectionsController < ApplicationController

  layout 'admin'

  before_action :section_params, only: [:create]
  before_action :set_params, only: [:show, :edit, :update, :delete, :destroy]

  def index
    @sections = Section.sorted
  end

  def new
    @section = Section.new
  end

  def create
    @section = Section.new(section_params)
    if @section.save
      flash[:notice] = 'Section created successfully'
      redirect_to sections_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @section.update(section_params)
      flash[:notice] = 'Section updated successfully'
      redirect_to section_path(@section)
    else
      render :edit
    end
  end

  def delete
  end

  def destroy
    @section.destroy
    flash[:notice] = 'Section deleted successfully'
    redirect_to sections_path
  end

  private

  def section_params
    params.require(:section).permit(:page_id, :name, :position, :visible, :content_type, :content)
  end

  def set_params
    @section = Section.find(params[:id])
  end
end