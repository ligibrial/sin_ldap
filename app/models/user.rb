class User < ApplicationRecord
	has_secure_password

  scope :ultimos, ->{ order("created_at DESC").limit(4) }
  def self.users_by_name(word)     
      where("users.first_name LIKE ?",word)
  end
    

 
end
