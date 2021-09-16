class RoomsController < ApplicationController
  def new
    @room = Room.new
    # チャットルームの新規作成なので、newアクション

  end

  def create
    @room = Room.new(room_params)
    # paramsを引数にすれば、全部の値を取得できるわけだが、
    # 余計なものまで取得してデータ改竄等を防止するため、
    # ストロングパラメーターを使う
    # ストロングパラメータは引数に当てているメソッド内の
    # 書き方のことで、必要なパラメータを絞ることで、
    # 不要なパラメータのみ取得することができる

    if @room.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def room_params
    params.require(:room).permit(:name,user_ids:[])
  end

end
