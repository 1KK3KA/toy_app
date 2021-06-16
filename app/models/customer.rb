class Customer < ApplicationRecord
    validates :username, presence: true, length: { maximum: 25 }
    validates :email, presence: true, length: { maximum: 100 },
    format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i}
    before_save { self.email = email.downcase }
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }
end
