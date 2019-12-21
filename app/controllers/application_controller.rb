class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include ApplicationHelper
  include SessionsHelper
  include UsersHelper
  
  $status = ["新規","面談前", "面談後","完了",]
  
  private

   # ユーザーのログインを確認する
   def logged_in_user
     unless logged_in?
       store_location
       flash[:danger] = "ログインしてください"
       redirect_to login_url
     end
   end
end


