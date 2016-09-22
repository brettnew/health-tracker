class Food < ActiveRecord::Base
  belongs_to :user

  validates :name, :calories_in, :serving_size, :presence => true

end
