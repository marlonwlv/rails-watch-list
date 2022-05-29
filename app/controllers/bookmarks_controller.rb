class BookmarksController < ApplicationController
  before_action :set_list , except: [:destroy]

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

  def destroy
    bookmark = Bookmark.find(params[:id])
    bookmark.destroy
    redirect_to list_path(bookmark.list_id)
  end

  private

  def set_list
    @list = List.find(params[:list_id])
  end

  def bookmarks_params
    params.require(:bookmark).permit(:comment, :movie_id, :list_id )
  end
end
