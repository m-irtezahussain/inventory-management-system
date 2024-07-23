class Admin < ApplicationRecord

    has_secure_password

    has_many :categories, dependent: :destroy
    has_many :products, dependent: :destroy

    validates :name, presence: true, length: {maximum: 10, message: "Name is too long!"}
    validates :email, presence: true, uniqueness: { case_sensitive: false }, length: { maximum: 50 }
    validates :password_digest, presence: true

end
