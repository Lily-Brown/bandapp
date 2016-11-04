class BandsController < ApplicationController
  before_action :get_band, only: [:show]

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
  end

  private

  def create_band_params
    params.require(:band).permit(:band_name)
  end

  def get_band
    @band = Band.find(params[:id])
  end
end



# ----------


#   def show
#   end

#   def edit
#   end

#   def update
#     if @musician.update(update_musician_params)
#       flash[:success] = 'Musician Updated!'
#       redirect_to @musician
#     else
#       flash[:error] = @musician.errors.full_messages.join(' ')
#       render :edit
#     end
#   end

#   def destroy
#     @musician.destroy
#     redirect_to root_path
#   end




#   def update_musician_params
#     params.require(:musician).permit(:name,:genres,:influences,:bio,:zip_code,:image,:audio_clip,:gear, instrument_ids:[])
#   end



#   def is_current_musician
#     if current_musician != @musician
#       flash[:error] = 'You do not have permission to perform this action'
#       redirect_to current_musician
#     end
#   end
# end
