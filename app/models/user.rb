class User < ActiveRecord::Base
  has_many :user_gardens
  has_many :gardens, through: :user_gardens
  has_many :plants, through: :gardens
end
