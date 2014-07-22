class VolunteersController < ApplicationController
  load_and_authorize_resource

  def create
     @site = Site.find(params[:site_id])
     @volunteer = @site.volunteers.create(volunteer_params)
     redirect_to site_path(@site)
  end

  def destroy
     @site = Site.find(params[:site_id])
     @volunteer = @site.volunteers.find(params[:id])
     @volunteer.destroy
     redirect_to site_path(@site)
  end

  private
    def volunteer_params
      params.require(:volunteer).permit(:vname)
    end
end
