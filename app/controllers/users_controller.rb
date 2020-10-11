class UsersController < ApplicationController
  def show
    # @user = User.show(user_params)
    # @users = current_user.users
    @prototypes = current_user.prototypes
  end

  private

  def user_params
    params.permit(:id,:email, :name, :profile, :occupation,:position)
  end
end
