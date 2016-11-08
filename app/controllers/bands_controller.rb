class BandsController < ApplicationController
  before_action :get_band, only: [:show, :edit, :update, :destroy]
  before_action :is_owner, only: [:edit, :update, :destroy]

  def index
    @bands = Band.all
  end

  def new
    @band = Band.new
  end

  def create
    @band = current_musician.bands.create(create_band_params)
    if @band.save
      flash[:success] = 'Band Created!'
      redirect_to @band
    else
      flash[:error] = @band.errors.full_messages.join(' ')
      render :new
    end
  end

  def show
    @members = get_members.all.where(band_id: @band.id)
    @openings = get_openings.all.where(band_id: @band.id)
    session[:band_id] = @band.id
  end

  def edit
  end

  def update
    if @band.update(update_band_params)
      flash[:success] = 'Band Updated!'
      redirect_to @band
    else
      flash[:error] = @band.errors.full_messages.join(' ')
      render :edit
    end
  end

  def destroy
    @band.destroy
    redirect_to root_path
  end

  private

  def create_band_params
    params.require(:band).permit(:band_name,:slug)
  end

  def get_band
    @band = Band.friendly.find(params[:id])
  end

  def update_band_params
    params.require(:band).permit(:band_name,:genres, :audio_clip, :influences,:bio,:zip_code,:gear,:photo,:mp3,:slug)
  end

  def is_owner
    if current_musician != @band.musician
      flash[:error] = 'You do not have permission to perform this action'
      redirect_to root_path
    end
  end

  def get_members
    @members = BandInstrumentMusician.all.where.not({musician_id: nil})
  end

  def get_openings
    @openings = BandInstrumentMusician.all.where({musician_id: nil})
  end
end
