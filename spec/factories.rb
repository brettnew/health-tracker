FactoryGirl.define do
  factory(:user) do
    email('brett@email.com')
    username('brett')
    password_digest('password')
    weight(145)
    age(25)
  end

  factory(:food) do
    name('chocolate')
    calories_in(400)
    serving_size(1)
  end

end
