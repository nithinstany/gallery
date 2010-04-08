class GalleryAssetsController < ApplicationController
  # GET /gallery_assets
  # GET /gallery_assets.xml
  def index
    @gallery_assets = GalleryAsset.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @gallery_assets }
    end
  end

  # GET /gallery_assets/1
  # GET /gallery_assets/1.xml
  def show
    @gallery_asset = GalleryAsset.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @gallery_asset }
    end
  end

  # GET /gallery_assets/new
  # GET /gallery_assets/new.xml
  def new
    @gallery_asset = GalleryAsset.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @gallery_asset }
    end
  end

  # GET /gallery_assets/1/edit
  def edit
    @gallery_asset = GalleryAsset.find(params[:id])
  end

  # POST /gallery_assets
  # POST /gallery_assets.xml
  def create
    @gallery_asset = GalleryAsset.new(params[:gallery_asset])

    respond_to do |format|
      if @gallery_asset.save
        flash[:notice] = 'GalleryAsset was successfully created.'
        format.html { redirect_to(@gallery_asset) }
        format.xml  { render :xml => @gallery_asset, :status => :created, :location => @gallery_asset }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @gallery_asset.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /gallery_assets/1
  # PUT /gallery_assets/1.xml
  def update
    @gallery_asset = GalleryAsset.find(params[:id])

    respond_to do |format|
      if @gallery_asset.update_attributes(params[:gallery_asset])
        flash[:notice] = 'GalleryAsset was successfully updated.'
        format.html { redirect_to(@gallery_asset) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @gallery_asset.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /gallery_assets/1
  # DELETE /gallery_assets/1.xml
  def destroy
    @gallery_asset = GalleryAsset.find(params[:id])
    @gallery_asset.destroy

    respond_to do |format|
      format.html { redirect_to(gallery_assets_url) }
      format.xml  { head :ok }
    end
  end
end
