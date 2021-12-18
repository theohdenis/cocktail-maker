class ListsController < ApplicationController


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
    @list = List.new(valid_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  private

  def valid_params
    params.require(:list).permit(:name)
  end
end
