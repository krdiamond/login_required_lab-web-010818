class SessionsController < ApplicationController

  def new
  end

  def create
    @name = params[:name]
    if @name == nil || @name == ""
      redirect_to login_path
    else
      session[:name] = @name
      redirect_to '/'
    end
  end


  def destroy
    if session[:name] == nil
      redirect_to login_path
    else
      session.delete :name
      redirect_to login_path
    end
  end

end
