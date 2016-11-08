class BandInstrumentMusiciansController < ApplicationController
  before_action :is_owner, only: [:update, :destroy]

  def new
    @member = BandInstrumentMusician.new
  end

  def create
    @member = BandInstrumentMusician.new(new_member_params)
    if @member.save(validate: false)
      flash[:success] = "Your opening has been created!"
      redirect_to band_path(session[:band_id])
    else
      flash[:error] = "Error creating your opening."
      render :new
    end
  end

  def edit
    @openings = get_openings.all.where(band_id: current_musician.bands)
  end

  def update
    @opening = BandInstrumentMusician.find(params[:id])
    musician = Musician.find(session[:musician_add])
    @opening.musician = musician
    if @opening.save
      flash[:success] = "#{musician.name} has been added to your band!"
      redirect_to band_path(@opening.band)
    else
      flash[:error] = "Error adding musician to band."
      redirect_to musician_path(musician)
    end
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
    member_id = params['member_id'].nil? ? params['id'].to_i : params['member_id'].to_i
    if current_musician != BandInstrumentMusician.find(member_id).band.owner
      flash[:error] = 'You do not have permission to perform this action'
      redirect_to :back
    end
  end

end
