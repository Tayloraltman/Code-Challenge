class UsersController < ApplicationController


private
def user_params
    params.require(:post).permit(:name, :email,)
  end

  def find_user
    @user = User.find(params[:id])


  end
end
