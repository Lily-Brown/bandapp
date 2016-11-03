module SessionsHelper

    def login(musician)
      session[:musician_id] = musician.id
      @current_musician = musician
    end

    def logged_in?
      if current_musician == nil
        redirect_to login_path
      end
    end

    def current_musician
      @current_musician ||= Musician.find_by_id(session[:musician_id])
    end

    def logout
      @current_musician = session[:musician_id] = nil
      flash[:success] = "Successfully logged out."
      redirect_to root_path
    end

end
