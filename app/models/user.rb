class User < ActiveRecord::Base
  validates :name, :login, :password, :password_confirmation, :email, presence: true  
  validates :email, format: { with: /\A[0-9a-zA-Z]+[@]+[a-zA-Z]+[.]+[a-zA-Z]+\z/, message: "@" }
  validates :password, confirmation: true

  belongs_to :profession
  has_many :test_sessions

  has_secure_password
  
  has_surveys
  # attr_accessible :name, :login, :password, :password_confirmation, :email 
end
