class ContributorsController < ApplicationController
  respond_to :html, :xml
  
  def index
    @contributors = Contributor.find(:all)
    respond_with(@contributors)
  end
  
  def show
    @contributor = Contributor.find(params[:id])
    @title = "#{@contributor.first_name} #{@contributor.last_name}"
    respond_with(@contributor)
  end

  def new
    @contributor = Contributor.new
    @title = "Add a Contributor"
    respond_with(@contributor)
  end

  def create
    @contributor = Contributor.new(params[:contributor])
    if @contributor.save
      flash[:success] = "#{@contributor.first_name} #{@contributor.last_name} created successfully"
    else
      @title = "Add a Contributor"
    end
    respond_with(@contributor)
  end

  def update
    @contributor = Contributor.find(params[:id])
    if @contributor.update_attributes(params[:contributor])
      flash[:success] = "Contributor updated."
    else
      @title = "Edit contributor information"
    end
    respond_with(@contributor)
  end

  def destroy
    Contributor.find(params[:id]).destroy
    flash[:success] = "Contributor deleted from database."
     
    respond_with(@contributor) do |format|  
      format.js   { render :nothing => true }
    end
  end
  
  def edit
    @contributor = Contributor.find(params[:id])
    @title = "Edit contributor"
    respond_with(@contributor)
  end

end
