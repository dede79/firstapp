FactoryGirl.define do
	sequence :name do |n|
    "Product Name #{n}"
	end	

  factory :product do
    name 
    description { SecureRandom.hex }
  end
end