class PagesController < ApplicationController

  layout 'admin'

  before_action :page_params, only: [:create]
  before_action :set_params, only: [:show, :edit, :update, :delete, :destroy]

  def index
    @pages = Page.sorted
    # binding.pry
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)
    if @page.save
      flash[:notice] = 'Page created successfully'
      redirect_to(pages_path)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @page.update(page_params)
      flash[:notice] = 'Page updated successfully'
      redirect_to page_path(@page)
    else
      render :edit
    end
  end

  def delete
  end

  def destroy
    @page.destroy
    flash[:notice] = 'Page deleted successfully'
    redirect_to pages_path
  end

  private

  def page_params
    params.require(:page).permit(:name, :subject_id, :permalink, :position, :visible)
  end

  def set_params
    @page = Page.find(params[:id])
  end
end
