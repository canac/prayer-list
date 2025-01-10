class PartnersController < ApplicationController
  def update
    params.require(:id)
    partner = Partner.find(params[:id])
    partner.update! prayed: !partner.prayed

    respond_to do |format|
      format.html { redirect_to root_path }
      format.turbo_stream { render turbo_stream: turbo_stream.replace(partner, partial: "partner/form", locals: { partner: partner }) }
    end
  end
end
