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
      !!current_user
    end

    def login(email, password)
      # is the user who they claim to be
      # check if the user exists, if so set session
      user = User.find_by(email: email)
      if user && user.authenticate(password)
        # if statement assignment
        session[:email] = email
      else
        redirect '/login'
      end
      # otherwise redirect
    end

    def logout!
      session.clear
    end

    def current_user
      @current_user ||= User.find_by(:email => session[:email])
      # returns user if already set or finds and sets user
    end
  end


end
