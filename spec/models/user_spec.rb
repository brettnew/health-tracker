require 'rails_helper'

describe User do
  it { should validate_presence_of :email }
  it { should validate_presence_of :username }
  it { should validate_presence_of :weight }
  it { should validate_presence_of :age }
  it { should validate_presence_of :password_digest }

  it { should have_and_belong_to_many :exercises}
  it { should have_and_belong_to_many :foods}
end
