class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # @user = user(user_params)
    @prototypes = current_user.prototypes
  end

  private

  def user_params
    params.permit(:id,:email, :name, :profile, :occupation,:position)
  end
end
