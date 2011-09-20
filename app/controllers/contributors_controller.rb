class ContributorsController < ApplicationController
  def show
  end

  def new
  end

  def create
  end

  def update
  end

  def destroy
  end
  
  def edit
    @contributor = Contributor.find(params[:id])
    @title = "Edit contributor"
  end

end
