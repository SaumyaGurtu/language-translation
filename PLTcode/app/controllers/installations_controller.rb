class InstallationsController < ApplicationController
 load_and_authorize_resource

 def new
   @installation = Installation.new
 end

 def edit
   @installation = Installation.find(params[:id])
 end

 def index
   @installations = Installation.all
 end

 def show
   @installation = Installation.find(params[:id])
 end

 def destroy
  @installation = Installation.find(params[:id])
  @installation.destroy
 
  redirect_to installations_path
 end

 def update
   @installation = Installation.find(params[:id])
 
  if @installation.update(installation_params)
        redirect_to @installation
  else
    render 'edit'
  end
 end

 def create
     @installation = Installation.new(installation_params)
	 
     if @installation.save
        redirect_to @installation
     else
        render 'new'
     end
 end

 private
   def installation_params
       params.require(:installation).permit(:installation, :email, :address, :contact)
   end
end
