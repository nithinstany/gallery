class GalleriesController < ApplicationController

  def index
    @galleries = Gallery.find(:all,:include => [:gallery_assets],:order => "created_at DESC")
  end

  def show
    @gallery = Gallery.find(params[:id],:include => [:gallery_assets])
  end

  def new
    redirect_to root_path
  end

  def edit
     redirect_to root_path
  end

  def create
     redirect_to root_path
  end

  def update
     redirect_to root_path
  end

  def destroy
     redirect_to root_path
  end
end

