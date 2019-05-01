class Plant < ActiveRecord::Base
  belongs_to :garden
  has_many :users, through: :garden

  # AR validations are beyond the scope of this project!
  # not required!
  # validates :plant_type, presence: true
end
