class User < ActiveRecord::Base
  belongs_to :profession
  has_many :test_sessions
end
