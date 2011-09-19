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
    @comic_book = ComicBook.find(params[:id])
    if @comic_book.update_attributes(params[:comic_book])
      flash[:success] = "Comic book updated."
      redirect_to @comic_book
    else
      @title = "Edit comic book information"
      render 'edit'
    end
  end

  def destroy
    ComicBook.find(params[:id]).destroy
    flash[:success] = "Comic book deleted from database."
    redirect_to comic_books_path
  end

  def index
    @comic_books = ComicBook.find(:all)
  end
  
  def edit
    @comic_book = ComicBook.find(params[:id])
    @title = "Edit comic book"
  end
end
