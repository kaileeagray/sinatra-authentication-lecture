class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    # sinatra issue browser a cookie
    # if you steal cookie from one browser, you can hijack the session by downloading cookies

    enable :sessions
    set :session_secret, "avi"
  end

  get '/' do
    session[:greeting] = "Hello World"
    response.set_cookie 'credit_amount', '100'
    "Hello World!"
  end

  get '/remember' do
    # this maintains state with cookie
    # this is bad! do not put data in cookie
    # only issue a session id for the data stored on our server
    "You have #{request.cookies['credit_amount']} left"
  end

end
