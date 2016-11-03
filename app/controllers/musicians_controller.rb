class MusiciansController < ApplicationController

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
    @musician = Musician.find(params[:id])
  end

  private

  def login_musician_params
    params.require(:musician).permit(:name,:email,:password,:password_confirmation)
  end

end
