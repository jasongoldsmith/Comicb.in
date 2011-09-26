class ComicBooksController < ApplicationController
  respond_to :html, :xml
  
  def show
    @comic_book = ComicBook.find(params[:id])
    @title = "#{@comic_book.title} #{@comic_book.issue}"
    respond_with(@comic_book)
  end

  def new
    @comic_book = ComicBook.new
    @title = "Add a Comic Book"
    respond_with(@comic_book)
  end

  def create
    @comic_book = ComicBook.new(params[:comic_book])
    if @comic_book.save
      flash[:success] = "#{@comic_book.title} #{@comic_book.issue} created successfully"
    else
      @title = "Add a Comic Book"
    end
    respond_with(@comic_book)
  end

  def update
    @comic_book = ComicBook.find(params[:id])
    if @comic_book.update_attributes(params[:comic_book])
      flash[:success] = "Comic book updated."
    else
      @title = "Edit comic book information"
    end
    respond_with(@comic_book)
  end

  def destroy
    ComicBook.find(params[:id]).destroy
    flash[:success] = "Comic book deleted from database."

     respond_with(@comic_book) do |format|  
       format.js   { render :nothing => true }
    end

  end

  def index
    @comic_books = ComicBook.find(:all)
    respond_with(@comic_books)
  end
  
  def edit
    @comic_book = ComicBook.find(params[:id])
    @title = "Edit comic book"
    respond_with(@comic_book)
  end
end
