class InstrumentsController < ApplicationController

  def index
    @instruments = Instrument.all
  end

  def show
    # explode
    @instrument = Instrument.find(params[:id])
  end

end
