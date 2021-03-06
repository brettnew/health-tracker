require 'rails_helper'

describe Food do
  it { should validate_presence_of :name }
  it { should validate_presence_of :calories_in }
  it { should validate_presence_of :serving_size }

  it { should belong_to :user }
end
