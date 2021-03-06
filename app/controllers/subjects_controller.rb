class SubjectsController < ApplicationController
  layout 'admin'
  before_action :subject_params, only: [:create]
  before_action :set_subject, only: [:show, :edit, :update, :delete, :destroy]

  def index
    @subjects = Subject.sorted

  end

  def show
  end

  def new
    @subject = Subject.new
  end

  def create
    @subject = Subject.new(subject_params)
    if @subject.save
      flash[:notice] = 'Subject created successfully.'
      redirect_to subjects_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @subject.update(subject_params)
      flash[:notice] = 'Subject updated successfully.'
      redirect_to subject_path(@subject)
    else
      render :edit
    end
  end

  def delete
  end

  def destroy
    @subject.destroy
    flash[:notice] = "Subject #{@subject.name} deleted successfully."
    redirect_to(subjects_path)
  end

  private

  def subject_params
    params.require(:subject).permit(:name, :position, :visible)
  end

  def set_subject
    @subject = Subject.find(params[:id])
  end
end
