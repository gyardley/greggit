class User < ActiveRecord::Base

  devise :omniauthable

  def self.find_for_twitter_oauth(auth, signed_in_resource=nil)

    user = User.where(provider: auth.provider, uid: auth.uid).first

    if user
      return user
    else
      registered_user = User.where(uid: auth.uid).first
      if registered_user
        return registered_user
      else
        user = User.create(provider:auth.provider, uid:auth.uid)
      end
    end
  end

end
