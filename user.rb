class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 15 } 
  validates :email, presence: true, format: { with: /\A\S+@\S+\.\S+\z/ }
  validates :password, length: { in:8..32 }, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i}
  
  has_secure_password
  
end