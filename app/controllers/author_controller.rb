class AuthorController < ApplicationController
  def index
    @first_name = User.find(params[:author_id]).first_name
    @last_name = User.find(params[:author_id]).last_name
    @age = User.find(params[:author_id]).age
    @email = User.find(params[:author_id]).email
    @city = User.find(params[:author_id]).city.name
  end
end
