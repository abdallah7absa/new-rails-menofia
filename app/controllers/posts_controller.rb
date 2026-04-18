class PostsController < ApplicationController
  
  # GET /posts
  def index
    @posts = Post.all
  end

  # GET /posts/:id
  def show
    @post = Post.find(params[:id])
  end

  # GET /posts/new
  def new
    @post = Post.new
  end

  # POST /posts/commit
  def create
    @post = Post.new(post_params)
    @post.save

  end

  # GET /posts/:id/edit
  def edit
    @post = Post.find(params[:id])
  end

  # PATCH/PUT /posts/:id
  def update
    @post = Post.find(params[:id])
    @post.update(post_params)

  end

  # DELETE /posts/:id
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :content)
  end

  # I've use ai here
end
