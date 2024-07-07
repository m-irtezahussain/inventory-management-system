class Admin < ApplicationRecord

    has_secure_password

    validates :name, presence: true, length: {maximum: 50}
    validates :email, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 50 }
    validates :password_digest, presence: true
    
    
end
