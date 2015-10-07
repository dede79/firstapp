FactoryGirl.define do
  factory :product do
  name "Oneproduct"
  description "pretty"

  end

	factory :comment do
	    user_id "3"
	    body "nice dress"
	    rating "5"    
	end
end