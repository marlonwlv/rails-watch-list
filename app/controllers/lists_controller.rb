class ListsController < ApplicationController
  def index
    @lists = List.all
  end
  def create
    list = List.new(list_params)
    if list.save
      redirect_to lists_path
    else
      render :new
    end
  end
  def new
    @list = List.new
  end
  def edit
  end
  def show
    @list = List.find(params[:id])
    @bookmarks = @list.bookmarks
    # @movie = Movie.find(@boo)
    # @bookmark = @list.bookmark
  end
  def update
  end
  def destroy
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
