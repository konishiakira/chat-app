class UsersController < ApplicationController
  def edit
  end
  def update
    if current_user.update(user_params)
      redirect_to root_path
      # 編集が成功したら、チャット画面（root）に戻る
    else
      render :edit
      # 編集が失敗したら、editアクションに戻る
    end
  end


  private
  def user_params
    params.require(:user).permit(:name, :email)
  end
end

