class PartnersController < ApplicationController
  def update
    params.require(:id)
    partner = Partner.find(params[:id])
    partner.update! prayed: !partner.prayed

    redirect_to root_path
  end
end
