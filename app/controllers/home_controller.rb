class HomeController < ApplicationController
  def index
    @posts = Post.last(4)
  end
end
