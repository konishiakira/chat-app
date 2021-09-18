class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  has_one_attached :image

  validates :content, presence: true, unless: :was_attached?
  # unless部分：メソッドの返り値がfalseならば
  # バリデーションによる検証を行う

  def was_attached?
    self.image.attached?
    # レコードにファイルが添付されているかどうかでtrueかfalseを返す

  end
end
