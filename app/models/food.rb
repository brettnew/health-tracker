class Food < ActiveRecord::Base
  has_and_belongs_to_many :users

  validates :name, :calories_in, :serving_size, :presence => true

end
