class TasksController < ApplicationController

  def index
    tasks
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)

    respond_to do |format|
      if @task.save
        format.html { redirect_to root_path, notice: 'Task created' }
      else
        tasks
        format.html { render :index, status: :unprocessable_entity }
      end
    end
  end

  def update
    @task = Task.find(params[:id])

    respond_to do |format|
      if @task.update(update_params)
        format.html { redirect_to root_path, notice: 'Task Updated' }
      else
        tasks
        format.html { render :index, status: :unprocessable_entity }
      end
    end
  end

  private

  def tasks
    @tasks ||= Task.all.order(:updated_at)
  end

  def update_params
    params.require(:task).permit(:done)
  end

  def task_params
    params.require(:task).permit(:description)
  end
end
