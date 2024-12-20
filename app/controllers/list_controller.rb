class ListController < ApplicationController
  def index
    @partners = Partner.all
  end
end
