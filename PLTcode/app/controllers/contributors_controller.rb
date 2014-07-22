class ContributorsController < ApplicationController
  load_and_authorize_resource

  def create
     @site = Site.find(params[:site_id])
     @contributor = @site.contributors.create(contributor_params)
     redirect_to site_path(@site)
  end

  def destroy
     @site = Site.find(params[:site_id])
     @contributor = @site.contributors.find(params[:id])
     @contributor.destroy
     redirect_to site_path(@site)
  end

  private
    def contributor_params
      params.require(:contributor).permit(:name)
    end
end
