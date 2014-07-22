class SitesController < ApplicationController
 load_and_authorize_resource

 def new
  @site = Site.new
 end

 def index
  @sites = Site.all
 end

 def create
  @site = Site.new(site_params)
 
  if @site.save
   redirect_to @site
  else
   render 'new'
  end
 end

 def edit
  @site = Site.find(params[:id])
 end

 def destroy
  @site = Site.find(params[:id])
  @site.destroy
 
  redirect_to sites_path
 end

 def show
  @site = Site.find(params[:id])
 end

 def update
  @site = Site.find(params[:id])
 
  if @site.update(site_params)
    redirect_to @site
  else
    render 'edit'
  end
 end
 
 private
  def site_params
    params.require(:site).permit(:name, :installation_id)
  end

end
