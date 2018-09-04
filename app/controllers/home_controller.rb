class HomeController < ApplicationController
  skip_before_action :authenticate_user!, :only => [:index]
  def index
    @posts = Post.last(3)
    @events = Event.where(role: 1).order("date")
    @esportes = Post.where(category: 3).order("created_at DESC").last(4)
    @classifields = Classifield.last(6)
    @jobs = Job.last(8)
    @commercials = Commercial.where(role: 1)
    @contests = Contest.last(8)
  end
end
