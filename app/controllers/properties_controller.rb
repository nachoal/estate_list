class PropertiesController < ApplicationController
  def index
    # @properties = Property.all
    @properties = Property.where(published: true).order(:id).page params[:page]
  end
end
