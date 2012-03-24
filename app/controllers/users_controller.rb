class UsersController < ApplicationController
  
  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end 
  
  def new
    @user = User.new
  end
  
  def edit
    @user = User.find(params[:id])
  end 
  
  def create
    @user = User.new(params[:user])
    
    if @user.save
      redirect_to root_url, notice: 'User was successfully created.'
    else
      render action: "new"
    end
  end
  
  def update
    @user = User.find(params[:id])
  end
  
  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end
  
end