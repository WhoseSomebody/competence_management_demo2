class Test < ActiveRecord::Base
	has_many :test_session
	has_many :questions
end
