class PropertiesController < ApplicationController
  def index
    if params[:query].present?
      @properties = Property.where("eb_type ILIKE ?", "%#{params[:query]}%").order(:id).page params[:page]
    else
      @properties = Property.where(published: true).order(:id).page params[:page]
    end
  end

  def show
    @property = Property.find(params[:id])
    @markers = [
      {
        lng: @property.longitude,
        lat: @property.latitude
      }
    ]
  end
end
