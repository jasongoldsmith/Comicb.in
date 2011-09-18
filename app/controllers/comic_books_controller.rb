class ComicBooksController < ApplicationController
  def show
    @comicbook = ComicBook.find(params[:id])
    @contributors = @comicbook.contributors
    @title = "#{@comicbook.title} #{@comicbook.issue}"
  end

  def new
  end

  def create
  end

  def update
  end

  def destroy
  end

end
