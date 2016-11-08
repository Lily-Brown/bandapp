class BandInstrumentMusiciansController < ApplicationController
  before_action :is_owner, only: [:update]
  before_action :is_owner_destroy, only: [:destroy]


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
    @member = BandInstrumentMusician.find(member_id)
    @member.destroy
    redirect_to band_path(@member.band)
  end

  private

  def new_member_params
    params.require(:band_instrument_musician).permit(:band_id,:instrument_id,:musician_id)
  end

  def get_openings
    @openings = BandInstrumentMusician.all.where({musician_id: nil})
  end

  def is_owner
    if current_musician != BandInstrumentMusician.find(params['id'].to_i).band.owner
      flash[:error] = 'You do not have permission to perform this action'
      redirect_to :back
    end
  end

  def is_owner_destroy
    if current_musician != BandInstrumentMusician.find(params['member_id'].to_i).band.owner
      flash[:error] = 'You do not have permission to perform this action'
      redirect_to :back
    end
  end

end
