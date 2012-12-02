class User < ActiveRecord::Base
  attr_accessible :email, :name
  
  has_many :meals
  
  def self.from_omniauth(auth)
    find_by_provider_and_uid(auth["provider"], auth["uid"]) || create_with_omniauth(auth)
  end

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
    end
  end
  
  # def self.create_with_omniauth(auth)
  #   create do |user|
  #     user.provider = auth.provider
  #     user.uid = auth.uid
  #     user.name = auth.name
  #     user.email = auth.email
  #     user.image_url = auth.info.image
  #     user.oauth_token = auth.credentials.token
  #     user.oauth_expires_at = Time.at(auth.credentials.expires_at)
  #     user.save!
  #   end
  # end
end
