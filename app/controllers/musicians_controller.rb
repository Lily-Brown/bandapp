class MusiciansController < ApplicationController

  def new
    @musician = Musician.new
  end

  def create 
    @musician = Musician.create(login_musician_params)
    if @musician.save
      # flash
      redirect_to root_path
    else
      # flash
      render :back
    end
  end

  def show
    @musician = Musician.find(params[:id])
  end

  private

  def login_musician_params
    params.require(:musician).permit(:name,:email,:password,:password_confirmation)
  end

end
