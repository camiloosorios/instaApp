class PostsController < ApplicationController
  before_action :authenticate_user!

  def new
  end

  def create
    @post = Post.new(post_params)

    @post.user_id = current_user.id;

    if @post.save
      redirect_to profile_path, notice: 'Post creado correctamente'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  private
  def post_params
    params.permit(:description, :photo, :user_id);
  end
end
