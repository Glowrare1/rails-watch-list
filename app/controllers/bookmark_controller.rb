class BookmarkController < ApplicationController
  before_action :set_list, only: %i[add delete bookmark]

  def new
    @bookmark = @list.bookmark
  end

  def create


  end
end
