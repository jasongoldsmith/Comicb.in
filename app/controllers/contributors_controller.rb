class ContributorsController < ApplicationController
  def index
    @contributors = Contributor.find(:all)
  end
  
  def show
    @contributor = Contributor.find(params[:id])
    @comic_books = @contributor.comic_books
    @title = "#{@contributor.first_name} #{@contributor.last_name}"
  end

  def new
    @contributor = Contributor.new
    @title = "Add a Contributor"
  end

  def create
    @contributor = Contributor.new(params[:contributor])
    if @contributor.save
      flash[:success] = "#{@contributor.first_name} #{@contributor.last_name} created successfully"
      redirect_to @contributor
    else
      @title = "Add a Contributor"
      render 'new'
    end
  end

  def update
    @contributor = Contributor.find(params[:id])
    if @contributor.update_attributes(params[:contributor])
      flash[:success] = "Contributor updated."
      redirect_to @contributor
    else
      @title = "Edit contributor information"
      render 'edit'
    end
  end

  def destroy
    Contributor.find(params[:id]).destroy
    flash[:success] = "Contributor deleted from database."
     
    respond_to do |format|  
      format.html { redirect_to(contributors_path) }  
      format.js   { render :nothing => true }
    end
  end
  
  def edit
    @contributor = Contributor.find(params[:id])
    @title = "Edit contributor"
  end

end
