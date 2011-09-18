class ComicBooksController < ApplicationController
  def show
    @comic_book = ComicBook.find(params[:id])
    @contributors = @comic_book.contributors
    @title = "#{@comic_book.title} #{@comic_book.issue}"
  end

  def new
    @comic_book = ComicBook.new
    @title = "Add a Comic Book"
  end

  def create
    @comic_book = ComicBook.new(params[:comic_book])
    if @comic_book.save
      flash[:success] = "#{@comic_book.title} #{@comic_book.issue} created successfully"
      redirect_to @comic_book
    else
      @title = "Add a Comic Book"
      render 'new'
    end
  end

  def update
  end

  def destroy
  end

end
