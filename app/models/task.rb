class Task < ActiveRecord::Base
  belongs_to :profession
  belongs_to :competence
end
