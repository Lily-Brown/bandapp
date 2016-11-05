class MusiciansController < ApplicationController
  before_action :get_musician, only: [:show, :edit, :update, :destroy]
  before_action :logged_in?, only: [:edit, :update, :destroy]
  before_action :is_current_musician, only: [:edit, :update, :destroy]

  def index
    @musicians = Musician.all
  end

  def new
    @musician = Musician.new
  end

  def create
    @musician = Musician.create(login_musician_params)
    if @musician.save
      login(@musician)
      flash[:success] = 'Musician Created!'
      redirect_to @musician
    else
      flash[:error] = @musician.errors.full_messages.join(' ')
      render :new
    end
  end

  def show
    session[:musician_add] = @musician.id
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
    params.require(:musician).permit(:name,:genres,:influences,:bio,:zip_code,:audio_clip,:gear,:photo,instrument_ids:[])
  end

  def get_musician
    @musician = Musician.find(params[:id])
  end

  def is_current_musician
    if current_musician != @musician
      flash[:error] = 'You do not have permission to perform this action'
      redirect_to current_musician
    end
  end
end
