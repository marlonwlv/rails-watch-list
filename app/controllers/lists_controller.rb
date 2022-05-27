class ListsController < ApplicationController
  def index
    @lists = List.all
  end
  def create
  end
  def new
  end
  def edit
  end
  def show

    @list = List.find(params[:id])
    # @bookmarks = Bookmark.all
    @movies = @list.movies

  end
  def update
  end
  def destroy
  end
end
