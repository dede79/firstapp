FactoryGirl.define do
	factory :comment do
	  association :user
	  association :product
	  
	  body "nice dress"
	  rating "5"    
	end
end