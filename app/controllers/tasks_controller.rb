class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    set_task
  end

  def new
    @task = Task.new
    set_statuses_list
  end

  def edit
    set_task
    set_statuses_list
  end

  def create
    set_statuses_list
    @task = Task.new(task_params)
    if @task.save
      redirect_to tasks_path 
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def update
    set_task
    if @task.update(task_params)
      redirect_to tasks_path
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def destroy
    set_task
    if @task.destroy
      redirect_to tasks_path
    else
      redirect_back(fallback_location: root_path)
    end
  end

  private
    def set_task
      @task = Task.find(params[:id])
    end

    def task_params
      params.require(:task).permit(:title, :status)
    end

    def set_statuses_list
      @statuses = %i(created in_progress solved)
    end
end
