# This will guess the User class
FactoryGirl.define do

  factory :user do
    first_name "Donald"
    last_name  "Duck"
    email "test@sometest.com" # this does not generate random emails....problem when many users on same test.
    password "65498766"
    admin false

    # This will use the User class (Admin would have been guessed)
    factory :admin do
      first_name "Admin"
      last_name  "User"
      admin      true
    end
  end  
end
