class ResourcesController < ApplicationController
  def new

  end
  def index
    @resources = Resource.all
  end
  def show

  end
  def create
    @file = Resource.new(resource_params)
    if @file.save
      flash[:success] = 'file uploaded successfully'
      redirect_to resources_path
    end
  end
  private
  def resource_params
    params.require(:resources).permit(params[:image_file])
  end
end
