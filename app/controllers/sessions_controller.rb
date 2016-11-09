class SessionsController < ApplicationController

  def new
    @musician = Musician.new
  end

  def create
    musician_params = params.require(:musician).permit(:email, :password)
    @musician = Musician.confirm(musician_params)
    if @musician
      login(@musician)
      flash[:success] = "Successfully logged in."
      redirect_to @musician
    else
      flash[:error] = "Incorrect email or password."
      redirect_to login_path
    end
  end

  def destroy
    logout
  end
end
