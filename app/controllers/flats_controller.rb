require "open-uri"

class FlatsController < ApplicationController
  FLATS_URL = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
  before_action :set_flats, only: [:index, :show]

  def index
    #show all flats from Json
    #Get url and parse i
  end

  def show
    # find one specific flat with the id
    @flat = @flats.find do |flat|
      flat['id'] == params[:id].to_i
    end
  end

  private

  def set_flats
    @flats = JSON.parse(open(FLATS_URL).read)
  end
end
