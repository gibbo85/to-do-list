class ListsController < ApplicationController

  def index
  @new_task = List.new
  @all_tasks = List.order(created_at: :desc).all
  end

  def create
    @new_task = List.new(list_params)
    if @new_task.save
      redirect_to root_path
    end
  end

  private
  def list_params
      params.require(:list).permit(:task)
  end



end
