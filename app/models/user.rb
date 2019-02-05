class User < ActiveRecord::Base
  has_many :user_gardens
  has_many :gardens, through: :user_gardens
  has_many :plants, through: :gardens

  has_secure_password # gives us access to the #authenticate method!

  def slug
    name.gsub(" ", "-").downcase + "-" + id.to_s
  end

  def self.find_by_slug(slug)
    all.find {|u| u.slug == slug}
  end

end
