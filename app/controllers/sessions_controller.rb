require "instagram"

class SessionsController < ApplicationController

  def connect
    redirect_to Instagram.authorize_url(:redirect_uri => CALLBACK_URL, :scope => 'basic likes comments relationships') 
  end

  def callback
    response = Instagram.get_access_token(params[:code], :redirect_uri => CALLBACK_URL)
    session[:username] = response.user.username
    session[:profile_picture] = response.user.profile_picture    
    session[:access_token] = response.access_token
    redirect_to "/user/#{session[:username]}"
  end

  def logout
    session[:access_token] = nil
    redirect_to root_url
  end

end
