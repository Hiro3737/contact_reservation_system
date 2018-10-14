class BasicInfosController < ApplicationController
    def edit
           @user = User.find(params[:id])
    end
    
    def create
    
    end
    
    def basic_info
        @user = current_user
    end
end