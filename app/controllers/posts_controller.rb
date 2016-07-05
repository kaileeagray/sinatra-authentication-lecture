class PostsController < ApplicationController

  get '/posts' do
    "A list of publically available posts"
  end

  get '/posts/new' do
    #checks if logged in
    if !logged_in?
      redirect "/login" # redirect if not logged in
    else
      "A new post form"
    end
  end

  get '/posts/:id/edit' do
    if !logged_in?
      redirect "/login" # redirect if not logged in
    else
      if post = current_user.posts.find_by(params[:id])
        "An edit new post form #{current_user.id} "
      else
        redirect '/posts'
      end
    end
  end
end
