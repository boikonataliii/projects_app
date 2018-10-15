class Account::TasksController < ApplicationController


  def new
    @task=Task.new
  end

  def create
    project=Project.find(params[:project_id])
    @task=Task.new(tasks_params)
    if @task.save
      redirect_to account_project_path(@project)
    else
      render :new
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to account_project_path(@project)
  end

  def show
    @task = Task.find(params[:id])

  end


  private
  def tasks_params
    params.require(:task).permit(:text)
  end
end
