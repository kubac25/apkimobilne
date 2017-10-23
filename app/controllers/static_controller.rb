class StaticController < ApplicationController
  def index
    @students = Student.all
    @courses = Course.all
    @topics = Topic.all
    @posts = Post.all
  end
end
