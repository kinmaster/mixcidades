class HomeController < ApplicationController
  def index
    @posts = Post.last(4)
    @events = Event.all
  end
end
