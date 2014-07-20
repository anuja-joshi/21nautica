class ExportItemsController < ApplicationController

  def create
    export = Export.find(params[:export_id])
    export.export_items.create(export_items_params)
    render nothing: :true
  end

  private

  def export_items_params
    params.permit(:container, :location)
  end
end