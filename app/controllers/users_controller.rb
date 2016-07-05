class UsersController < ApplicationController
  get '/signup' do
    erb :"users/new.html"
  end

  post '/users' do
    @user = User.new
    @user.email = params[:email]
    @user.password = params[:password]
    if @user.save
      redirect '/login'
    else
      erb :"users/new.html"
      #render when the current request has the data we need
    end
  end
end
