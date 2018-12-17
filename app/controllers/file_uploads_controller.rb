class FileUploadsController < ApplicationController
  def new
      @post = Post.find(params[:post_id])
  end

  def create
    @post = Post.find(params[:post_id])
    @post.files.attach(params[:post][:files])
    redirect_to post_path(@post)
  end

end
