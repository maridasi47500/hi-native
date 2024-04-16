class WelcomeController < ApplicationController
  def index
  end
  def search
    @posts=Post.search(params[:search])
  end
end
