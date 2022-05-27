class BookmarksController < ApplicationController
  before_action :set_list

  def new
    @bookmark = @list.bookmarks.new
  end
  def create
    @bookmark = @list.bookmarks.new(bookmarks_params)
    if @bookmark.save
      redirect_to @list
    else
      render :new
    end
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def bookmarks_params
    params.require(:bookmark).permit(:comment, :movie_id, :list_id )
  end
end
