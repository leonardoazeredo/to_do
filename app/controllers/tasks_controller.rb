class TasksController < ApplicationController
  def index
    @tasks = current_user.tasks.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path
    else
      render 'new'
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to tasks_path
    else
      render 'edit'
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  def complete
    @tasks = Task.find(params[:id])
    @tasks.update_attribute(:completed, params[:completed])
    redirect_to :back
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
