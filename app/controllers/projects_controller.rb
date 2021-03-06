class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      flash[:notice]= "Project Succesfully Created!"
      redirect_to projects_path
    else
      render :new
    end
  end

  def index
    @projects = Project.all
  end
  def show
    @project = Project.find(params[:id])
    @project.increment! :views
  end
  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])
    if @project.update(project_params)
      flash[:notice]= "Succesfully Updated Project!"
      redirect_to project_path(@project)
    else
      render :edit
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    flash[:notice]= "Project Deleted Succesfully!"
    redirect_to projects_path
  end

  private
  def project_params
    params.require(:project).permit(:name,:github,:description)
  end
end
