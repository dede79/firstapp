FactoryGirl.define do
	sequence :name do |n|
    "Product Name #{n}"  # check factorygirl sequence instructions to create random data
	end	

  factory :product do
    name 
    description { SecureRandom.hex } # ruby method to create random data
  end
end