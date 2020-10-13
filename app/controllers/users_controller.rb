class UsersController < ApplicationController
  def show
    #Pathパラメーターで送信されるID値Userモデルの特定のオブジェクトを取得
    @user = User.find(params[:id])
    #UserとPrototypeのアソシエーションでPrototypeが主役
    @prototypes = @user.prototypes
  end
end
