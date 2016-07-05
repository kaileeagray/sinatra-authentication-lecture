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
      post = Post.find(params[:id])
      "An edit new post form"
    end
  end
end
