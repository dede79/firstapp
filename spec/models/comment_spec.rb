# require 'rails_helper'

# describe Comment do 

#     describe "#body" do

# 		it "should have a comment in body" do
# 		  	# setup
# 		    comment = build(:comment)

# 		    # fire
# 		    comment.valid? # which checks the validity of the comment

# 		    # test results
            
# 		    # expect( product.errors[:name].include?("can't be blank") ).to(be_truthy)
# 	        expect(comment.errors[:body]).to include("can't be blank")
# 	    end
#     end   
# end