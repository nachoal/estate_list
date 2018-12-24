class PropertiesController < ApplicationController
  def index
    if params[:query].present?
      @properties = Property.where("eb_type ILIKE ?", "%#{params[:query]}%").order(:id).page params[:page]
    else
      @properties = Property.where(published: true).order(:id).page params[:page]
    end
  end
end
