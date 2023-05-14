class ListsController < ApplicationController
  # before_action :set_list, only: [:show, :destroy]
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to lists_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @list = List.find(params[:id])
    @list.destroy
    redirect_to list_path(@list), status: :see_other
  end
  # def update
  #   @list.update(list_params)
  #   redirect_to list_path(@list)
  # ends
  private
  def list_params
    params.require(:list).permit(:name, :photo)
  end

  def set_list
    @list = List.find(params[:id])
  end
end
