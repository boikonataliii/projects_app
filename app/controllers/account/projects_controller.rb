class Account::ProjectsController < ApplicationController

  def index
   @projects = Project.all
   
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to account_projects_path
    else
      render :new
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])

    if @project.update(project_params)

      redirect_to account_projects_path
    else
      render :edit
    end
  end

  def show
      @project = Project.find(params[:id])

  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to account_projects_path
  end



  private

  def project_params
    params.require(:project).permit( :name, :description)
  end
end
