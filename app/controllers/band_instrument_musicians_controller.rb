class BandInstrumentMusiciansController < ApplicationController

  def new
    @member = BandInstrumentMusician.new
  end

  def create
    @member = BandInstrumentMusician.new(new_member_params)
    @member.save(validate: false)
    redirect_to band_path(session[:band_id])
  end

  def edit
    @openings = get_openings.all.where(band_id: current_musician.bands)
  end

  def update
    @opening = BandInstrumentMusician.find(params[:id])
    musician = Musician.find(session[:musician_add])
    @opening.musician = musician
    @opening.save
    redirect_to band_path(@opening.band)
  end

  def destroy
    member_id = params['member_id'].to_i
    BandInstrumentMusician.find(member_id).destroy
    redirect_to band_path
  end

  private

  def new_member_params
    params.require(:band_instrument_musician).permit(:band_id,:instrument_id,:musician_id)
  end

  def get_openings
    @openings = BandInstrumentMusician.all.where({musician_id: nil})
  end

end
