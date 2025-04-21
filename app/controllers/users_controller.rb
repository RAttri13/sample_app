class UsersController < ApplicationController
<<<<<<< HEAD

  def show
    @user = User.find(params[:id])
  end

  def new
    @user=User.new
  end

  def create
      @user = User.new(user_params)
      if @user.save
        log_in @user
        flash[:success]= "hello #{@user.name} welcome to the sample app "
        redirect_to user_url(@user)
        # redirect_to @user
      else
        render 'new'
      end
    end

    private def user_params
      params.require(:user).permit(:name, :email, :password,:password_confirmation)
    end

   
=======
  def new
  end
>>>>>>> c817fe7 (Finish layout and routes)
end
