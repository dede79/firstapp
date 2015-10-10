# This will guess the User class
FactoryGirl.define do

  factory :user do
    first_name { SecureRandom.hex }
    last_name  { SecureRandom.hex }

    sequence :email do |n|
      "person#{n}@example.com"  # check factorygirl sequence instructions to create random data
    end  

    password { SecureRandom.hex }
    admin false

    # This will use the User class (Admin would have been guessed)
    factory :admin do
      first_name "Admin"
      last_name  "User"
      admin      true
    end
  end  
end
