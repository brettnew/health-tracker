class User < ActiveRecord::Base
  has_secure_password

  has_many :exercises
  has_many :foods

  validates :email, :username, :weight, :age, :password_digest, :presence => true

  validates_uniqueness_of :email

end
