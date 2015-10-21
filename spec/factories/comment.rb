FactoryGirl.define do
	factory :comment do
	  association :user  #when comment is created, it will bind it to a product and user created beforehand
	  association :product
	  
	  body "nice dress"
	  rating "5"    
	end
end