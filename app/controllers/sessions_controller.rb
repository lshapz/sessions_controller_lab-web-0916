require 'byebug'
class SessionsController < ApplicationController

  def new
    #render :login
  end 

  def create
    # byebug
    if params[:name] == nil || params[:name].empty?
      redirect_to :login
    else
      session[:name] = params[:name] 
      redirect_to controller: 'application', action: 'hello'
    end 
  end 

  def destroy
    session[:name] = nil
    redirect_to :login
  end 

end 