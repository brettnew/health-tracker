class Exercise < ActiveRecord::Base
  belongs_to :user

  validates :name, :calories_out, :duration, :presence => true

end
