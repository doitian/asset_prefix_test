class ApplicationController < ActionController::Base
  protect_from_forgery

  def index
  end

  def save
    if params[:name]
      session[:name] = params[:name]
    end
    redirect_to root_path
  end

  def clear
    session.clear
    redirect_to root_path
  end
end
