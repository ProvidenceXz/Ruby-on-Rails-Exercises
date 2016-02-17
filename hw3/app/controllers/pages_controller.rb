class PagesController < ApplicationController
  def home 
    @users = User.all
    @todos = Todo.all
    @cats = Cat.all
  end
end