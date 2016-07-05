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
    # only put data in session
    session[:greeting] = "Hello World"
    response.set_cookie 'credit_amount', '100'
    "Hello World!"
  end

  helpers do
    def logged_in?
      !!session[:email]
    end

    def login(email)
      session[:email] = email
    end

    def logout!
      session.clear
    end
  end


end
