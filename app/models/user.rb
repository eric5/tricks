class User < ActiveRecord::Base
  validates :email, :password, :name, presence: true
  validates :email, uniqueness: true
  has_many :tricks, dependent: :destroy

  has_secure_password
end
