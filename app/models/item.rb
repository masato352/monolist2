class Item < ActiveRecord::Base
  has_many :ownerships  , foreign_key: "item_id" , dependent: :destroy
  has_many :users , through: :ownerships
  
  # 6.6で追加
  has_many :want_users, class_name: "User", foreign_key: "item_id", dependent: :destroy
  has_many :want_users , through: :wants, source: :user

  has_many :have_users, class_name: "User", foreign_key: "item_id", dependent: :destroy
  has_many :have_users , through: :haves, source: :user

end
