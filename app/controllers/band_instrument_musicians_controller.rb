class BandInstrumentMusiciansController < ApplicationController

  def new
    @member = BandInstrumentMusician.new
  end

  def create
    @member = BandInstrumentMusician.new(new_member_params)
    @member.save(validate: false)
    redirect_to band_path(session[:band_id])
  end

  private

  def new_member_params
    params.require(:band_instrument_musician).permit(:band_id,:instrument_id,:musician_id)
  end

end
