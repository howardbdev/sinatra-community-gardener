class Garden < ActiveRecord::Base
  has_many :plants
  has_many :user_gardens
  has_many :users, through: :user_gardens
end
