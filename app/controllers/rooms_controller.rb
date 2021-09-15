class RoomsController < ApplicationController
  def new
    @room = Room.new
    # チャットルームの新規作成なので、newアクション

  end
end
