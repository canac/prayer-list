class ListController < ApplicationController
  def index
    @partners = Partner.all
  end

  def update
    params.require(:partner)
    prayed_ids = params[:partner].keys
    Partner.where(id: prayed_ids).update_all(prayed: true)
    Partner.where.not(id: prayed_ids).update_all(prayed: false)
    redirect_to root_path
  end
end
