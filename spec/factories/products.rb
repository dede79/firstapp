FactoryGirl.define do
  factory :product do
  name "Oneproduct"
  id "1"
  description "pretty"
  end

	factory :comment do
	    user_id "3"
	    body "nice dress"    
	    rating "3"
	    product_id "1"
	end
end