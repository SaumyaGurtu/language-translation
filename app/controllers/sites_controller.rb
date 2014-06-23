class SitesController < ApplicationController
  def create
     @installation = Installation.find(params[:installation_id])
     @site = @installation.sites.create(site_params)
     redirect_to installation_path(@installation)
  end

  def destroy
     @installation = Installation.find(params[:installation_id])
     @site = @installation.sites.find(params[:id])
     @site.destroy
     redirect_to installation_path(@installation)
  end

  private
    def site_params
      params.require(:site).permit(:name)
    end
end
