class UsersController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: :destroy

  def index
        @users = User.paginate(page: params[:page])
  end
  
  def show
    if logged_in?
      @user = current_user
    end

   # 既に表示月があれば、表示月を取得する
    if !params[:first_day].nil?
      @first_day = Date.parse(params[:first_day])
    else
      # 表示月が無ければ、今月分を表示
      @first_day = Date.new(Date.today.year, Date.today.month, 1)
    end
    #最終日を取得する
    @last_day = @first_day.end_of_month
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      @user.send_activation_email
      flash[:info] = "Please check your email to activate your account."
      redirect_to root_url
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end
  
    def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end
  
  

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
    
    # beforeアクション
    
    # ログイン済みユーザーかどうか確認
    def logged_in_user
      unless logged_in?
         store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
    
        # 正しいユーザーかどうか確認
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
    
        # 管理者かどうか確認
    def admin_user
     redirect_to(root_url) unless current_user.admin?
    end
end