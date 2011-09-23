class ContributorsController < ApplicationController
  def show
  end

  def new
  end

  def create
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
  end
  
  def edit
    @contributor = Contributor.find(params[:id])
    @title = "Edit contributor"
  end

end
