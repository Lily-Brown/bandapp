class MusiciansController < ApplicationController
  before_action :get_musician, only: [:show, :edit, :update, :destroy]

  def index 
    @musicians = Musician.all
  end

  def new
    @musician = Musician.new
  end

  def create 
    @musician = Musician.create(login_musician_params)
    if @musician.save
      flash[:success] = 'Musician Created!'
      redirect_to @musician
    else
      flash[:error] = @musician.errors.full_messages.join(' ')
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @musician.update(update_musician_params)
      flash[:success] = 'Musician Updated!'
      redirect_to @musician
    else
      flash[:error] = @musician.errors.full_messages.join(' ')
      render :edit
    end
  end

  def destroy
    @musician.destroy
    redirect_to root_path
  end


  private

  def login_musician_params
    params.require(:musician).permit(:name,:email,:password,:password_confirmation)
  end

  def update_musician_params
    params.require(:musician).permit(:name,:genres,:influences,:bio,:zip_code,:image,:audio_clip,:gear)
  end

  def get_musician
    @musician = Musician.find(params[:id])
  end
end
