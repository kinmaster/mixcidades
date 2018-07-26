class HomeController < ApplicationController
  def index
    @posts = Post.last(3)
    @events = Event.last(4)
    @esportes = Post.where(category: 3).order("created_at DESC").last(4)
  end
end
