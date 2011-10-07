class Users::ProfilesController < ApplicationController
  before_filter :authenticate_user!
  
    def index
      @user = User.all 
    end
    
    def new
      @user = User.new
    end
    
    def show
      @user_show = User.find_by_id(current_user.id)
      @car_pertinente = Car.find_by_id(current_user.id)
      
      y @user_show
      #@user = User.find(params[:user.id])
    end
  
end
