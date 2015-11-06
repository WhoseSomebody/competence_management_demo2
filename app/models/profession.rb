class Profession < ActiveRecord::Base
  has_one :qualification, dependent: :destroy
  has_one :accountability, dependent: :destroy
  has_one :responsibility, dependent: :destroy
  has_many :tasks
  has_many :competences, :through => :tasks
end
