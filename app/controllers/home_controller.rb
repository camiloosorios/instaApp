class HomeController < ApplicationController
  before_action :authenticate_user!
  
  def index
  end

  def profile
  end

  def new
    @post = Post.new
  end
end
