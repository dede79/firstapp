# This will guess the User class
FactoryGirl.define do

  factory :user do
    first_name "Donald"
    last_name  "Duck"
    email "test@sometest.com"
    password "65498766"
    admin false
  end

  # This will use the User class (Admin would have been guessed)
  factory :admin, class: User do
    first_name "Admin"
    last_name  "User"
    admin      true
  end

  factory :comment, class: Comment do
    user 
    body
    rating
  end
end
