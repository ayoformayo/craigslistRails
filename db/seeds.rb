require 'faker'


10.times do
  category_list = Category.create!(:title => Faker::Company.catch_phrase)
  10.times do
    Post.create!(:title => Faker::Company.name,:category_id => category_list.id,
    :description => Faker::Lorem.paragraph, :price => rand(100), :email => Faker::Internet.email)
  end
end
