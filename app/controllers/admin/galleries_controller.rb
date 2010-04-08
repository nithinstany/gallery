class Admin::GalleriesController < ApplicationController

  before_filter :logged_in
  def index
    @galleries = Gallery.find(:all,:include => [:gallery_assets],:order => "created_at DESC")
  end

  def show
    @gallery = Gallery.find(params[:id],:include => [:gallery_assets])
  end

  def new
    @gallery = Gallery.new
    @gallery.gallery_assets.build
  end

  def edit
    @gallery = Gallery.find(params[:id],:include => [:gallery_assets])
  end

  def create
    @gallery = Gallery.new(params[:gallery])
      if @gallery.save
        flash[:notice] = 'Gallery was successfully created.'
        redirect_to  admin_gallery_path(@gallery)
      else
         render :action => "new"
    end
  end

  def update
    @gallery = Gallery.find(params[:id])
      if @gallery.update_attributes(params[:gallery])
        flash[:notice] = 'Gallery was successfully updated.'
         redirect_to admin_gallery_path(@gallery)
      else
       render :action => "edit"
      end

  end

  def destroy
    @gallery = Gallery.find(params[:id])
    @gallery.destroy
    redirect_to admin_galleries_url
  end
end

