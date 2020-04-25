class Post < ApplicationRecord
  include Notificable
  belongs_to :user

  def user_ids
    User.all.ids
  end
end
