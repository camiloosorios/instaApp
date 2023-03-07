class HomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
  end

  def profile
    @posts = Post.where(user_id: current_user.id)
  end

  def new
    @post = Post.new
  end
end
