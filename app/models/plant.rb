class Plant < ActiveRecord::Base
  belongs_to :garden
  has_many :users, through: :garden
end
